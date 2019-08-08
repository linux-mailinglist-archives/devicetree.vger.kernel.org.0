Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E70B38589A
	for <lists+devicetree@lfdr.de>; Thu,  8 Aug 2019 05:42:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730573AbfHHDl7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Aug 2019 23:41:59 -0400
Received: from mail-pl1-f195.google.com ([209.85.214.195]:35849 "EHLO
        mail-pl1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728025AbfHHDl6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Aug 2019 23:41:58 -0400
Received: by mail-pl1-f195.google.com with SMTP id k8so42930459plt.3
        for <devicetree@vger.kernel.org>; Wed, 07 Aug 2019 20:41:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=CltnQTlt8olc+fDLy2Jnh5hmJd7EG7/QIe5FFgTWxYw=;
        b=gUly2egFnTMEnmQt8hy4Aef/sXt/p2qtK4St243N9Vr8JaIVzaix9GpTB9gDSS6G8n
         VRuJ2gK+MoyQV+7mwOr4R6MqR4Ws4cSm57d5b/k0QfttT7FPqEGGaYmxO9zGVN80KUyf
         Xt7JDRsFKs4Dk255X8jwjb9Q1ycmt/wjj7tng=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=CltnQTlt8olc+fDLy2Jnh5hmJd7EG7/QIe5FFgTWxYw=;
        b=Y5ilsp0U5K6Kog1qKKvZ4lxYiI9whrT20QRTmMvktPimezBQ2RlMCJMzR34WpZOc4g
         9x6j+11dBm8ULBMlOjxSIFBZ+2vgm2lsDNefFTCCEk+nQ6RSf7A4Kb71RUYtAv5Q7Gkf
         hOXkiwpH7ChuvQNxiQukIcH8LVguXigqL1ZUkCeRfsVrjHbz651BytXWpltRPZgcjkVP
         P6HfpbY1mTSMyLgbAdf6eIpyeX6mcAEE6BIHL7KVD/NK25rHRisb/akiHcI6X8MQH+KN
         e00EQYTuqWyJ++RXpWIJ+mteodKOy4HNV3m7hxxqJL8H1zcRQQ3rikwCxYQMoHO8l1Pk
         9BZg==
X-Gm-Message-State: APjAAAUjX2y1tWKJth+nsSzmynP/owflXoP8uhvz+LzBRWSo0taj4WBg
        6Pq+ZFxxrJKuM4hLPA1qnnjE6w==
X-Google-Smtp-Source: APXvYqy1YWfA92bvwxrgj1XPwg6/YN6ruDZmL72kWXbICFTwOBsziMdPWNVG8Od/3aZ4K4bRsaZoCA==
X-Received: by 2002:a17:902:74c4:: with SMTP id f4mr10916411plt.13.1565235717808;
        Wed, 07 Aug 2019 20:41:57 -0700 (PDT)
Received: from rayagonda.dhcp.broadcom.net ([192.19.234.250])
        by smtp.gmail.com with ESMTPSA id y14sm46425482pge.7.2019.08.07.20.41.53
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 07 Aug 2019 20:41:56 -0700 (PDT)
From:   Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>
To:     Wolfram Sang <wsa@the-dreams.de>, Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>
Cc:     linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        Ray Jui <ray.jui@broadcom.com>,
        Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>,
        Florian Fainelli <f.fainelli@gmail.com>
Subject: [PATCH v1 0/2] Remove smbus quick cmd and update adapter name
Date:   Thu,  8 Aug 2019 09:07:51 +0530
Message-Id: <1565235473-28461-1-git-send-email-rayagonda.kokatanur@broadcom.com>
X-Mailer: git-send-email 1.9.1
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

This patchset contains following changes:
- Remove SMBUS quick command support
- Update full name of dt node to adapter name

Lori Hikichi (2):
  i2c: iproc: Stop advertising support of SMBUS quick cmd
  i2c: iproc: Add full name of devicetree node to adapter name

 drivers/i2c/busses/i2c-bcm-iproc.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

-- 
1.9.1

