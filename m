Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 56D73458633
	for <lists+devicetree@lfdr.de>; Sun, 21 Nov 2021 20:54:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229763AbhKUT5F (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 21 Nov 2021 14:57:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53650 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229753AbhKUT5E (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 21 Nov 2021 14:57:04 -0500
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E3A7AC061574
        for <devicetree@vger.kernel.org>; Sun, 21 Nov 2021 11:53:58 -0800 (PST)
Received: by mail-lf1-x136.google.com with SMTP id b40so70712748lfv.10
        for <devicetree@vger.kernel.org>; Sun, 21 Nov 2021 11:53:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=wirenboard-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=jDQ8casRaZS+l1rxrJCeAbTXhjCUovQT3i2rAe9QnHQ=;
        b=MspbIXHJZk6p7mD0w87WeBtdD2oQQ6mFcbm/J1qs30y1odPZzznO6xCH/B/wkCBNSN
         X/nWbP+N04MmihCNEK2Gt99s8ezqN6FH1yYQuArKeosps1EGRR32bAf6FDdq0PAKVlDd
         pwbafdunsgefopVeK/1o7iWYESVYpeqJvgIbIpvAVzEIenJ2tLTkoWEtl+Umw3YtfqYD
         Wu0bmamuT4LFy36T/ElYlv/ZaSqjzSt6W624cw/jeD2/ZdosRqmRTJqUW4ThYc1YaFGD
         s/vew8Y8wbdTkQzlhLCl1NyHddBSZFfik14o2stDjB7gNcFZEJN5RVe4X3OPKrvgJmoV
         N1Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=jDQ8casRaZS+l1rxrJCeAbTXhjCUovQT3i2rAe9QnHQ=;
        b=gAiNAaVE697Melnfobqak3O+Vvt5n7yIopc7/r1DsNeKnfrZORmlcNni+aPvkiDuo6
         5lZEV4eMjUHUjbXPRtIvcQgFWpjLcTgXVZ5ft8JFzstrGrmIDf2bTxSzl4xlcaSaOz3b
         AhJiQEcDhszHaCdREvdFNaw57/pp7GfTGfRK6qRW6UwFcWxYOXfeet58uliwQWWd8Zdy
         6xQZZRFGmMRXOxZimZzZhDTktTKAK5+SrmpmzprYG9u59ZK3v3nKMem/+MtGsGDS4GxQ
         dMJfOijSDoIMJkezto+lTjBl5+H+vl63h4iy/3ssBFRZC0/vmbUYWgC96wfz/WBPBORs
         4fWQ==
X-Gm-Message-State: AOAM533IEijgFZVdtpF+8ZKveOS0a/xoLLWZvw1dnweAyjWqLKOSPZd5
        ORiqcjsAhOcU5QOdSIwOgSGUfihw/r3RAw==
X-Google-Smtp-Source: ABdhPJwYpfyTLMo2Ivu2ZTj1fJkpboEZubzV2cCg94mVmf+fnyIlfXPkRv+Ng7Qi7mRHrLClMA9mJw==
X-Received: by 2002:a2e:b177:: with SMTP id a23mr45983013ljm.168.1637524437115;
        Sun, 21 Nov 2021 11:53:57 -0800 (PST)
Received: from boger-laptop.lan (81.5.99.121.dhcp.mipt-telecom.ru. [81.5.99.121])
        by smtp.gmail.com with ESMTPSA id a24sm768987ljq.18.2021.11.21.11.53.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Nov 2021 11:53:56 -0800 (PST)
From:   Evgeny Boger <boger@wirenboard.com>
To:     Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
        linux-arm-kernel@lists.infradead.org
Cc:     Evgeny Boger <boger@wirenboard.com>, devicetree@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>, linux-sunxi@lists.linux.dev
Subject: [PATCH v3 0/3] sun8i: r40: second ethernet support
Date:   Sun, 21 Nov 2021 22:53:34 +0300
Message-Id: <20211121195337.230475-1-boger@wirenboard.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch series adds support for two Ethernet ports on Allwinner R40.

R40 (aka V40,A40i,T3) has two different Ethernet IPs called EMAC and GMAC.
EMAC only support 10/100 Mbit in MII mode, while GMAC support both 10/100
(MII) and 10/100/1000 (RGMII).

In contrast to A10/A20 where GMAC and EMAC share the same pins making EMAC
somewhat pointless, on R40 EMAC can be routed to port H.
Both EMAC (on port H) and GMAC (on port A) can be then enabled at the same 
time, allowing for two ethernet ports.

Tested on custom A40i board with two IP101GRI PHYs in MII mode.

Changes in v3:
Minor fixes in bindings. Rebased on top of linux-next/master.
dt_bindings_check and dtbs_check passed.

 - bindings: separate commit for DT bindings
 - bindings: simplify handling of compatible strings
 - bindings: make resets property required on R40
 - dts: get rid of duplicate node

Changes in v2:
 - EMAC reset is no longer optional on R40
 - Add a new DT compatible string for R40 EMAC
 - Deassert reset line before enabling the clock
 - minor fixes: formatting, DT node order, leftover pinctrl props

Evgeny Boger (3):
  net: allwinner: reset control support
  dt-bindings: net: support for Allwinner R40 EMAC controller
  dts: r40: add second ethernet support

 .../net/allwinner,sun4i-a10-emac.yaml         | 20 +++++-
 arch/arm/boot/dts/sun8i-r40.dtsi              | 50 +++++++++++++++
 drivers/net/ethernet/allwinner/sun4i-emac.c   | 64 +++++++++++++++++--
 3 files changed, 128 insertions(+), 6 deletions(-)

-- 
2.25.1
