Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7DC3E4E658C
	for <lists+devicetree@lfdr.de>; Thu, 24 Mar 2022 15:42:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243213AbiCXOoN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Mar 2022 10:44:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39438 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236148AbiCXOoM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Mar 2022 10:44:12 -0400
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 29E3EAC928
        for <devicetree@vger.kernel.org>; Thu, 24 Mar 2022 07:42:40 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id bi13-20020a05600c3d8d00b0038c2c33d8f3so7353119wmb.4
        for <devicetree@vger.kernel.org>; Thu, 24 Mar 2022 07:42:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=RUuYp2gzZTfveRrYj1nKJKJ6GLr04No5LqGCeqkgp50=;
        b=G9HidbaMnDHtTrEAhAkiDwkyMIMMc6Wqcu/xpKqMNAqZgScFmSCAILoCtXpISK+Hhy
         uB+8YBCUwdxf1Gocu8dCsTLDhaqkZGMeh6nNJ3sUFCCJImFnDwOyBw6dRyGd8Rm8I3OK
         4rKkIdOoe9qcnCYK25u26XittRZwpnKn4rAlusYwV9HlRFHoau53kWOf/+m6xWfwxB/h
         zQ54w0wxyEcRcwkFJuJ+1mJTTVlkBlhHn7TzrxHuLg+m4FtaPlh57mFRtuAS7w7hH6M9
         cbq8IvAUXGMjZvK+w4GvQp66umUGHCpUGcbSgAPAW4awO2p2dX6wGm5kdQWdDSl4axza
         EZmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=RUuYp2gzZTfveRrYj1nKJKJ6GLr04No5LqGCeqkgp50=;
        b=vWMRnj6OB9rW9ttPrMvygJ6aMg2aJ3Uqz8HInCcK7WaO/DL9+BH8JLYpobUTd2SIdK
         7MRfx6MB4B/x9UhfyCCaVEoako4uTpxsEt8QXtNoLaF9D6MEEBjUA9EeNIplLTtyKUK+
         m4Tk6Qst5PplLq+/4VvZajlX1cbbjnnJia5uPQ5S/bE6lUJSjYBJOUAichiRYyLgt2nY
         8dz/sRQhXwSOfuN1a5tabOvraNNq9VGSR1BWlAyoT+nHP7wiriN960Dxd2pqdwhW4NlC
         EgWScDCUiyLa9OBI2pPLGULJjo/LPu1WK5WvUgaMprJNf9dc3ZDVLusBTH3eFuouFi9y
         +Feg==
X-Gm-Message-State: AOAM530E2Gc/y+1OJK4kr8sHo0/EVcXbMjt/XVwCmBn61WDJb/fK8Mfb
        iAeczs74fsxBa+Yasc2I+o0Q0A==
X-Google-Smtp-Source: ABdhPJw3kEFmgdFvOYqPEE/cnML2UreW9i+I5UewFAmsjCiGfAtVJ0zEiql/LajWmccl86QQnyLLPQ==
X-Received: by 2002:a05:600c:4608:b0:38c:6ba3:1c9f with SMTP id m8-20020a05600c460800b0038c6ba31c9fmr14542211wmo.39.1648132958693;
        Thu, 24 Mar 2022 07:42:38 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id r15-20020a5d6c6f000000b002040552e88esm3273175wrz.29.2022.03.24.07.42.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Mar 2022 07:42:38 -0700 (PDT)
From:   Corentin Labbe <clabbe@baylibre.com>
To:     davem@davemloft.net, herbert@gondor.apana.org.au,
        jernej.skrabec@gmail.com, krzk+dt@kernel.org, robh+dt@kernel.org,
        samuel@sholland.org, wens@csie.org
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-sunxi@lists.linux.dev, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH] dt-bindings: crypto: sun8i-ce: remove extra line
Date:   Thu, 24 Mar 2022 14:42:33 +0000
Message-Id: <20220324144233.1119495-1-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

yamllint complains about this extra line.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 Documentation/devicetree/bindings/crypto/allwinner,sun8i-ce.yaml | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/crypto/allwinner,sun8i-ce.yaml b/Documentation/devicetree/bindings/crypto/allwinner,sun8i-ce.yaml
index 00648f9d9278..026a9f9e1aeb 100644
--- a/Documentation/devicetree/bindings/crypto/allwinner,sun8i-ce.yaml
+++ b/Documentation/devicetree/bindings/crypto/allwinner,sun8i-ce.yaml
@@ -82,4 +82,3 @@ examples:
       clock-names = "bus", "mod";
       resets = <&ccu RST_BUS_CE>;
     };
-
-- 
2.34.1

