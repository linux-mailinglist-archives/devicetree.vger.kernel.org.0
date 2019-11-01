Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id EA2B7EC1CA
	for <lists+devicetree@lfdr.de>; Fri,  1 Nov 2019 12:29:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726622AbfKAL3X (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 1 Nov 2019 07:29:23 -0400
Received: from mail-pl1-f193.google.com ([209.85.214.193]:44908 "EHLO
        mail-pl1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725904AbfKAL3X (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 1 Nov 2019 07:29:23 -0400
Received: by mail-pl1-f193.google.com with SMTP id q16so4228251pll.11
        for <devicetree@vger.kernel.org>; Fri, 01 Nov 2019 04:29:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=p92cuEtTAdh8z1EKgYqkMpcFAcAlUy1RHEnLPK1F3r0=;
        b=Va7OvWaQ1IylgPzGcUGiDESB5xY58kdQRN8v53RjXuvDXnYtSCL1/7dNTInpMCVX28
         1IIbwv+T67P6dzmTFQJvgF7wJDosKVQ+Pt7yXcQgevTRkMT1PO7UmrD4bKbY1WNDcRpO
         hgLM0xgFesm/JaWIH4XcMhoUWpM5i0qYQT99pUwRYPXrgyijVVjiDB6IIa9Ue/7TL5as
         ao2DNvHFCvEM6G4ZpmmgEzGiKyMXWmc4LcFAEupmJ66ZRrnzcUfRLAlEnMNxawMI+hXm
         ccu6XPjBUDd/VxJQJfnuF0s/Z3DaJYRHJNTnNoLaw4P7ORFKmSfFaJdDQrjRqSqKl5W4
         d+PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :mime-version:content-transfer-encoding;
        bh=p92cuEtTAdh8z1EKgYqkMpcFAcAlUy1RHEnLPK1F3r0=;
        b=FZct4jWZUlGDU2DNCN12cm0zze374oy5KPnKhg45HnhIdYgFQCEy6LWphZxZ4M+ESE
         bSWcPMOZb3spu5Uf1RSc2kNWVGLVrVDSt2Bpn4igjVk4/tNYK1pd/AFWv5997KUY7FZW
         SLNtF5IxjGgrI82Hw4QOGYzhtwNbKGbbxOetFAb4UhB1eZDGeebqms5371Zw6/y/Cp+z
         k6+v4CyeDtBXXV+8ioRBJJS5rg39OCKPwvBNH1U53fmndsbqTL0aDVjxQ0LZPCwsgT40
         YBdSCE5Rx//KIyDivQ8kKXQ0z1NymVEMvu69UfadGT9iVPMoykU7rLgyPEHaMDSbh4LJ
         kHhA==
X-Gm-Message-State: APjAAAXTLTt/L5nwARXhOsx8aeaHJb2MJYCjOdTgocJV12yq0wZFcxAi
        wYV/7tvjW8vrFqK6qlGEXUk=
X-Google-Smtp-Source: APXvYqzD2S2s1L4Dbn422eCSxcqqNHgSDNJBIeH2OqJKCkhIoP6wcn9tFc6ywCEM9akDLmZBDSOVxQ==
X-Received: by 2002:a17:902:9b93:: with SMTP id y19mr11607207plp.96.1572607762144;
        Fri, 01 Nov 2019 04:29:22 -0700 (PDT)
Received: from voyager.lan ([45.124.203.14])
        by smtp.gmail.com with ESMTPSA id w12sm1369427pfn.105.2019.11.01.04.29.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Nov 2019 04:29:21 -0700 (PDT)
From:   Joel Stanley <joel@jms.id.au>
To:     Rob Herring <robh+dt@kernel.org>, Andrew Jeffery <andrew@aj.id.au>,
        Jeremy Kerr <jk@ozlabs.org>,
        Alistar Popple <alistair@popple.id.au>,
        Eddie James <eajames@linux.ibm.com>,
        Steven Rostedt <rostedt@goodmis.org>,
        Ingo Molnar <mingo@redhat.com>
Cc:     Benjamin Herrenschmidt <benh@kernel.crashing.org>,
        devicetree@vger.kernel.org, linux-fsi@lists.ozlabs.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/3] fsi: Add AST2600 FSI master
Date:   Fri,  1 Nov 2019 21:59:01 +1030
Message-Id: <20191101112905.7282-1-joel@jms.id.au>
X-Mailer: git-send-email 2.24.0.rc1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This adds support for the FSI master included in the ASPEED AST2600 BMC
SoC.

(It doesn't include Andrew's endian fix from today, those will be merged as
follow ups)

Joel Stanley (3):
  dt-bindings: fsi: Add description of FSI master
  fsi: Add ast2600 master driver
  fsi: aspeed: Add trace points

 .../bindings/fsi/fsi-master-aspeed.txt        |  24 +
 drivers/fsi/Kconfig                           |   6 +
 drivers/fsi/Makefile                          |   1 +
 drivers/fsi/fsi-master-aspeed.c               | 550 ++++++++++++++++++
 include/trace/events/fsi_master_aspeed.h      |  77 +++
 5 files changed, 658 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/fsi/fsi-master-aspeed.txt
 create mode 100644 drivers/fsi/fsi-master-aspeed.c
 create mode 100644 include/trace/events/fsi_master_aspeed.h

-- 
2.24.0.rc1

