Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 570D1774615
	for <lists+devicetree@lfdr.de>; Tue,  8 Aug 2023 20:53:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233207AbjHHSxE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Aug 2023 14:53:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39648 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233115AbjHHSwq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Aug 2023 14:52:46 -0400
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com [IPv6:2a00:1450:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 94283156FA8
        for <devicetree@vger.kernel.org>; Tue,  8 Aug 2023 10:07:01 -0700 (PDT)
Received: by mail-lj1-x233.google.com with SMTP id 38308e7fff4ca-2b9cf2b1309so818511fa.0
        for <devicetree@vger.kernel.org>; Tue, 08 Aug 2023 10:07:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1691514419; x=1692119219;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=BGR/FDAz6QwzMVqhMqlOHMf82ldcSZKkfY2QM99zIzc=;
        b=CQtg84BNm+us6VerTM8qc3BZ77OtD3dB4duwbPKrVFDWT3iGDfGW6PtsQGuRb8QjO4
         MKP3mbcmDlTmYLH1gG/Ur9yAa1L9WAnseYnSw+ss2brJ5w6COhqNW1uz5uAuwwRUI2TA
         +CMQqmo25fL/r/Y1qItM8HBml3/CRvtyM0ehyJX28MUyFNgrdkLTXgH8kikFuDe1fr9J
         /HqOSyHJ8qaHICGf/Nx20y10Obg4s6KoCvPN4lhsnbbqN287hgKiS0eSjIfAUNnKt+8U
         qkhaNNuTe8fK8dH0b1+3ulYyd6UPuGzKLNznlJw95gC0k5jgDTLLR+dvWZuosnCfggg0
         T8Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691514419; x=1692119219;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BGR/FDAz6QwzMVqhMqlOHMf82ldcSZKkfY2QM99zIzc=;
        b=Iouk1tnj/HJUcJ51i30JSOy3/4I0mo7QJsp1opE9gmmLMCMgCJA0Y4P1Y3YW7qVPfu
         zbtZTjzpyW4umeafZpwdDlkMXJUX5vBJ/18LOuDglocwmwq35vOy1WkQ8qZW/oqFIOns
         /O/toywSJwjGDBkPFK2wtoCMTCPLvI9glw/MtSNcTh8OB5PeFH4CIl7hgCMmGzvy1d7T
         V9hTYZ6EQC2V7kNAp6MkYQGxY6RZkhInBCSOGi0cghyaI4/iGLo2mBs1Ej4Mkp52BQw+
         oPLouGdvsoLgIrh06lMBkMoXXnkOQxwZ5tkDVuIZC7LcoBJa1DTiikRYvl76hxd9LI5U
         c/9A==
X-Gm-Message-State: AOJu0YxbaoAa/94S/X2hCgO3LNZ7qTX8mi3D+S3/hXX46fdJIByrbafK
        crWNPilQTolPTkvuBwrsuxqRfFEhVZdGHgUX8Vk=
X-Google-Smtp-Source: AGHT+IFzDPeVzQZoYJKpnuTnwP9ABSYbuSXkjD6PnqoZvzUu25vMVnUvTGUH/D3RmOCcWmeDluW3cg==
X-Received: by 2002:adf:f984:0:b0:313:e391:e492 with SMTP id f4-20020adff984000000b00313e391e492mr7187996wrr.17.1691489278679;
        Tue, 08 Aug 2023 03:07:58 -0700 (PDT)
Received: from toaster.lan ([2a01:e0a:3c5:5fb1:efd4:f3df:2c50:1776])
        by smtp.googlemail.com with ESMTPSA id e11-20020a5d500b000000b003143c9beeaesm13109420wrt.44.2023.08.08.03.07.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Aug 2023 03:07:58 -0700 (PDT)
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     Jerome Brunet <jbrunet@baylibre.com>, Da Xue <da@libre.computer>,
        linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 0/2] usb: misc: onboard_usb_hub: add gl3510 support
Date:   Tue,  8 Aug 2023 12:07:44 +0200
Message-Id: <20230808100746.391365-1-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-Patchwork-Bot: notify
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patchset adds the bindings and driver support to trigger the reset
pin of the Genesys Logic gl3510 usb hub.

Jerome Brunet (2):
  dt-bindings: usb: add device for Genesys Logic hub gl3510
  usb: misc: onboard_usb_hub: add Genesys Logic gl3510 hub support

 Documentation/devicetree/bindings/usb/genesys,gl850g.yaml | 3 ++-
 drivers/usb/misc/onboard_usb_hub.h                        | 5 +++++
 2 files changed, 7 insertions(+), 1 deletion(-)

-- 
2.40.1

