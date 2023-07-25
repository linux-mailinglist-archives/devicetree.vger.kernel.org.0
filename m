Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8A0D6760CDB
	for <lists+devicetree@lfdr.de>; Tue, 25 Jul 2023 10:23:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230351AbjGYIXP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 Jul 2023 04:23:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48848 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231726AbjGYIWz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 25 Jul 2023 04:22:55 -0400
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3CB6FE5C
        for <devicetree@vger.kernel.org>; Tue, 25 Jul 2023 01:22:54 -0700 (PDT)
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-3fde57684d7so9351555e9.2
        for <devicetree@vger.kernel.org>; Tue, 25 Jul 2023 01:22:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690273373; x=1690878173;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xdUCXMgeSh/e7vUp6LXwSvS294020VAeURwsafwe5mY=;
        b=zewfZn1lgSGCtMac0cb0QTt17/YQzq3Qxy5/NyDN6Jxhv0BYN6IjgYjE3iKWEGfgTC
         BAGNmz9KPlbuNwOClX+YugEEJAKaTdF7DxSNr47zaJkOk71ABdOxU2y5c5hucHAoM+3A
         HpdhsA67/VWyCsLsPUQb4Fc1E3toqXDGq4XnL5jqdLMVXxMi+j0v2uJ4rkUgA+zM7q7d
         Ps6NSRUQIXZ89FMz7McJe5kNltevsWDx0eAtMa500WAh9PFLkbRdL7wu49rRP8Be7SlV
         72TVXjrYeYUOGTQ/dXEO1jlOvPFsXh4EDD0Va/qIVc4TTOkUAtCBSLNAIvUZ1GvL4NAj
         0sng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690273373; x=1690878173;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xdUCXMgeSh/e7vUp6LXwSvS294020VAeURwsafwe5mY=;
        b=h6iGIiNHlf56hOhbOfWReVFIvq55v3H+izBU2nOT4TCKO05Rw1JOEDYZnJkWCbpbzz
         yCR7nX9nNE+jMoBaLI9DhFq4w0qCfwfikRNOBGBpt4AMaPaRA37nIwgb7glD5GJNM0G/
         kIshonZFrHz92DeqJ3ZPhijgnX1jTXWmjtXmlTBC2Dp5B2nJwPRU+0JqxmPMB6eW0d/T
         H0Ndd/tN1hsSdqv2fMWyklwVZ93RSShF66WLXx60Ej/u9hoCb6Gyi64saMxe1MhpWKmh
         bZEa04sUdxCt/3X2BKWwakFaBq2eKaB2N4Y7bMy/SgjJThwpn532TziT2YJsBo75iktd
         YDwQ==
X-Gm-Message-State: ABy/qLa4UYZBjRSUJSnsqlSWZ3vLWRM8mxLh4kQwr/I4wI/b7YLmIuwI
        tVE8eaLjV/54vMP4GIkl8sFE+w==
X-Google-Smtp-Source: APBJJlFpKzmP8Mc/lYAPXZUrjT7eauHxjqmxm3ki5r4f5DwPhUUeygbRq5Vju2w0VYKXR2TcxqydGw==
X-Received: by 2002:a5d:4ccd:0:b0:313:e9dc:44d5 with SMTP id c13-20020a5d4ccd000000b00313e9dc44d5mr7534884wrt.61.1690273372745;
        Tue, 25 Jul 2023 01:22:52 -0700 (PDT)
Received: from hackbox.lan ([82.78.74.213])
        by smtp.gmail.com with ESMTPSA id h4-20020adfe984000000b003175f00e555sm5626138wrm.97.2023.07.25.01.22.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Jul 2023 01:22:51 -0700 (PDT)
From:   Abel Vesa <abel.vesa@linaro.org>
To:     abelvesa@kernel.org, peng.fan@nxp.com, sboyd@kernel.org,
        shawnguo@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, Jacky Bai <ping.bai@nxp.com>
Cc:     kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/3] dt-bindings: clock: imx93: Add PDM IPG clk
Date:   Tue, 25 Jul 2023 11:22:41 +0300
Message-Id: <169027334139.2407862.12498824418000888053.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230628061724.2056520-1-ping.bai@nxp.com>
References: <20230628061724.2056520-1-ping.bai@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On Wed, 28 Jun 2023 14:17:22 +0800, Jacky Bai wrote:
> Add PDM IPG clk.
> 
> 

Applied, thanks!

[1/3] dt-bindings: clock: imx93: Add PDM IPG clk
      commit: 2fe182dd2783c870cb21f20732ff62f9cbb2451a
[2/3] clk: imx93: Add PDM IPG clk
      commit: 3ea570486039a12bb9dcbec977c70390b3d3c902
[3/3] clk: imx: Add 519.75MHz frequency support for imx9 pll
      commit: 07ba6d1ae524c627ac55bb98d5610d4fc44d3fe7

Best regards,
-- 
Abel Vesa <abel.vesa@linaro.org>
