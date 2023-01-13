Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 31238668EA9
	for <lists+devicetree@lfdr.de>; Fri, 13 Jan 2023 08:00:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240846AbjAMHAD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 Jan 2023 02:00:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33278 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240813AbjAMG66 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 13 Jan 2023 01:58:58 -0500
Received: from mail-pg1-x52d.google.com (mail-pg1-x52d.google.com [IPv6:2607:f8b0:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0CF1772898
        for <devicetree@vger.kernel.org>; Thu, 12 Jan 2023 22:45:10 -0800 (PST)
Received: by mail-pg1-x52d.google.com with SMTP id g68so13266200pgc.11
        for <devicetree@vger.kernel.org>; Thu, 12 Jan 2023 22:45:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=friendlyarm-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=FC/n51wttnGtNiNe7WH/BCIkLrvufvFzSnIEhGzQM4w=;
        b=b0jXb0ooQnNdoQ1WJ1MwgGXuYTywiQ6y+Pr92jpfFcquqViGzUGql5QyfKLmpQAOCt
         sAXVt8LTJf2qY6u5MSi9BQ8MQ+ZIG4E6OOVRCltq5A8wC4vADIcT0KdoeIQZ8iVfJ51E
         yTiLT3jCXN9OUYohSxwtFWUeDjQ0/esf9aBuIgXA7NYo8w+wct9CAK2IsShJIWWw1X4c
         4sE2DExfsS0srEhZAEEs4Zgf0jFwO1NQ8SU5IRwSyk7tr/0R87VxAF0GRkB5H1bujoMP
         8ZsMYzT/Pk+9MRBSKfaDi6tTSnyVytrNcKaUNWSA2+GVlWNgKRoU8L7MuQBmTJ5GhEwc
         6PUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FC/n51wttnGtNiNe7WH/BCIkLrvufvFzSnIEhGzQM4w=;
        b=bcTzwbqqEZKmfAaO7ZxZROxICrW82oc83P0+DKHNwgQTt4qhRL42gAhz/OAGJzFSco
         wdvBc73AOVuCDFE7oHXKw6M5wquJcHBCdsWfYFtpXsVpQrsunszm+RVXhsZRK12eVwk6
         RKzmWsmYXICXeHSU9z5WxTKYMQfgy96TL1pMQgF/aA4oPFGuQKB2wqmxM4cUc35lGOuu
         rguy/s438aD947XCF9VrY34gSiOPbCItPxWM09k3k0flqpbDBylwiXwA368tZH444HQ5
         i7ZnKjBlQ83QMzFMENzlfNwyJuJwbwII45itnI5yOZpgKlk+n9Lo8pULE5PK0/1DlHzb
         3NeA==
X-Gm-Message-State: AFqh2kqf2P67x2cI3COpgNpM/1DYCKmSjBslRIe2YM7a90v2/cH3N3j6
        z0cojasUgOGjAUo4Uk49O5CcbA==
X-Google-Smtp-Source: AMrXdXvDmf/1LdiTumMJjPEnygIZlv2EFUyFz6qHZThsAio0M/pePfshn1odQvyy9Za0jbgDpDpHIQ==
X-Received: by 2002:a05:6a00:88a:b0:581:19ed:78b9 with SMTP id q10-20020a056a00088a00b0058119ed78b9mr79911887pfj.2.1673592309502;
        Thu, 12 Jan 2023 22:45:09 -0800 (PST)
Received: from jensen.next (li999-236.members.linode.com. [45.33.49.236])
        by smtp.gmail.com with ESMTPSA id p29-20020aa79e9d000000b00574db8ca00fsm12886122pfq.185.2023.01.12.22.45.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Jan 2023 22:45:08 -0800 (PST)
From:   Jensen Huang <jensenhuang@friendlyarm.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Heiko Stuebner <heiko@sntech.de>
Cc:     Jensen Huang <jensenhuang@friendlyarm.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: rockchip: add missing #interrupt-cells to rk356x pcie2x1
Date:   Fri, 13 Jan 2023 14:44:57 +0800
Message-Id: <20230113064457.7105-1-jensenhuang@friendlyarm.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This fixes the following issue:
  pcieport 0000:00:00.0: of_irq_parse_pci: failed with rc=-22

Signed-off-by: Jensen Huang <jensenhuang@friendlyarm.com>
---
 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index 5706c3e24f0a..b3185e4115d9 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -985,6 +985,7 @@ pcie2x1: pcie@fe260000 {
 		resets = <&cru SRST_PCIE20_POWERUP>;
 		reset-names = "pipe";
 		#address-cells = <3>;
+		#interrupt-cells = <1>;
 		#size-cells = <2>;
 		status = "disabled";

--
2.38.1

