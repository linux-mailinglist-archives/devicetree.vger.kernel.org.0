Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 79CD9D8448
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2019 01:14:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387517AbfJOXOa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Oct 2019 19:14:30 -0400
Received: from mail-pf1-f194.google.com ([209.85.210.194]:36420 "EHLO
        mail-pf1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725970AbfJOXOa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Oct 2019 19:14:30 -0400
Received: by mail-pf1-f194.google.com with SMTP id y22so13446954pfr.3
        for <devicetree@vger.kernel.org>; Tue, 15 Oct 2019 16:14:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=zLV3yZ6h2VhlVH0j1u0lOQc1Y/lKJBR2XtrZuFRMBMk=;
        b=OOE3vB0RTLjbdD4WdZ7Yh1rDjVBnFHH2oxAzyS/B8CSHPB0lZu/pujtKnXcL4KJfk9
         PE8CEV19Ain5Ca3NRt73MMoYvvxSDAtOWRfKpHDErRckinETWQRTdWb1accSsQFIjbY5
         BDBNdx+WOQ+K2CHBK4fUmxDefTK4Ql68HHgE0MDAR5EOi5S84kO5NAg/Iap8/r8GlgBZ
         1IT4thOJjFkPa52nBFYS2rQAtNBm6Gg6EhDlYipI4VFKX52Rcfr72hXSOGz/ulDhgo8n
         Xl6Tc0Ov7cwvk18/molH8SgYFrjjrrtmtrotqN8HQ6Zj25ybRWefLK6DUgXHsm2H9UAQ
         4nYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=zLV3yZ6h2VhlVH0j1u0lOQc1Y/lKJBR2XtrZuFRMBMk=;
        b=cq6RrS9/BG1P1LhdD93PeqsAw9QiwBq+FHwbMeexvbzyqY3dC0Z0/uTQj/LxlDuXRi
         ba8Mwbvd7+Ec0b3sWp4zAJfHfnLTdtfniNZBTeMEv6oYUtv1mZaIK7CAaP5J3ySmIFVY
         I6XlKGeJleloL3u6m07vDOnAUCUTX20Ww76do2+70UtnGu+kaK/ZU5GKST4VWuwAqx/8
         Fam8ehdMOzTKgxzbCzGrPdXLU65uus5M+ZIM3M8ut6A7/+XYO9PhiHsxhKv5+a/1HyXN
         4bFWdK9aTwEpjE+FmdiWMhZOzTSJzs8Dv/bvr/UTg6bpL705TKn7t34d5VnCH0WuZAaM
         XWlg==
X-Gm-Message-State: APjAAAUO25TPgdhKRQfcoWrC7Eet04vVX8vCJyHNZiA5Gc+dNXIrQobM
        XhNdVDuDf0B7gpk2GdEMou0=
X-Google-Smtp-Source: APXvYqwJh/NSmepIzfPjD1ixc8XzbisZGJ3HyZZXYeyrMdtGSVdvaTtJP+PJ6ytQaTj/Y11G7LCGJw==
X-Received: by 2002:a62:6546:: with SMTP id z67mr41818426pfb.32.1571181269162;
        Tue, 15 Oct 2019 16:14:29 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id k124sm11301445pga.83.2019.10.15.16.14.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Oct 2019 16:14:28 -0700 (PDT)
From:   Florian Fainelli <f.fainelli@gmail.com>
To:     bcm-kernel-feedback-list@broadcom.com,
        Dan Haab <riproute@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Hauke Mehrtens <hauke@hauke-m.de>,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <zajec5@gmail.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Dan Haab <dan.haab@legrand.com>
Subject: Re: [PATCH] ARM: dts: BCM5301X: Add DT for Luxul XWC-2000
Date:   Tue, 15 Oct 2019 16:14:12 -0700
Message-Id: <20191015231412.5637-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <1570031846-8330-1-git-send-email-dan.haab@luxul.com>
References: <1570031846-8330-1-git-send-email-dan.haab@luxul.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed,  2 Oct 2019 09:57:26 -0600, Dan Haab <riproute@gmail.com> wrote:
> From: Dan Haab <dan.haab@legrand.com>
> 
> It's a simple network device based on BCM47094 with just a single
> Ethernet port.
> 
> Signed-off-by: Dan Haab <dan.haab@legrand.com>
> ---

Applied to devicetree/next, thanks!
--
Florian
