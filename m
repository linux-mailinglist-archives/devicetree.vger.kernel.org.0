Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8933867C84D
	for <lists+devicetree@lfdr.de>; Thu, 26 Jan 2023 11:18:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236918AbjAZKS1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 Jan 2023 05:18:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42596 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236599AbjAZKS0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 26 Jan 2023 05:18:26 -0500
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 10B20303EB
        for <devicetree@vger.kernel.org>; Thu, 26 Jan 2023 02:17:55 -0800 (PST)
Received: by mail-wr1-x431.google.com with SMTP id bk16so1220806wrb.11
        for <devicetree@vger.kernel.org>; Thu, 26 Jan 2023 02:17:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dSaaUyRl+8LAiEw6f3Sm8SchTE7R6yler7f1jr959YU=;
        b=DFD83/OR8SysvM+u1PfUkH+p5SM4qpCRAnfQhR088T7ezKQ3dZC1zNa0n9YwkzeLs+
         sF0pxgnXmDI8DnYK608JFkwJoc6br+Z8ySXaGi9uX70wJZRk8xj+hS17wkUdXB7tYtXp
         +LO1ijdi6SMDVPGrbDZ/5ComhLyvelPHHNDedwZn+nDEfjaxLHj89OBDP2isZSlIoVae
         572xafQaHGnNk42hAlx/QIjiK5YCQ0X1o2dJwd8R6YPWcpR8Dry9BhG5TYRDPmTB567O
         rFtZ8bSVkR8wqVPasXghGhG4iu9jIooxyGefdyCvYnIqFhzbp+J+IZ/NqkyoazoX0wvJ
         AUCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dSaaUyRl+8LAiEw6f3Sm8SchTE7R6yler7f1jr959YU=;
        b=EotIWaSdzpXr+cIWptMY7iw34G470FhcSBg4EqZdJTFG5pr+Rwwzci/LfsEuMBw2H6
         QqH8hrw9yK+pbq3o1rAjqtJtwwsIyl/h40D/vBbc675mak3Ysav3Go5uRThgr1K3ue8Z
         wA8bNnQpMT0pp/IoExzTgCj/qlgJUki/qyPZliN/ZCzJ59DFsQq6R13QOBrjemojEO25
         slMyMyHUOvWv8K1czIlTRIw8/7xjxK1es0dznwqfjyVjCN/2maVM/0EpIpc8kLXLUmeX
         OJFyVQ41noU3axAHv+s0iuYwTt36snfeXuACOf7+qocIyHz8logk9Zf5/4Y9xj2MRoy6
         nTmg==
X-Gm-Message-State: AO0yUKXh6l5ou/7F6o11mGtFPLHtcILU6Mz3VB/H31sH3nr+iE8wbCnR
        pLOKK3EZEBjK+vdQQcZLgogLlA==
X-Google-Smtp-Source: AK7set/sXYLotV3kzWCJDxfSdKq57E5wYvEyQGLwZoOgP4MV0ydpZugdbgpcAXjTU5hQ8x1IeF7y7Q==
X-Received: by 2002:adf:f409:0:b0:2bf:bb71:dc55 with SMTP id g9-20020adff409000000b002bfbb71dc55mr4945057wro.52.1674728271110;
        Thu, 26 Jan 2023 02:17:51 -0800 (PST)
Received: from krzk-bin.. ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id a17-20020adffb91000000b002bddac15b3dsm868315wrr.33.2023.01.26.02.17.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Jan 2023 02:17:50 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     linux-samsung-soc@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Marek Szyprowski <m.szyprowski@samsung.com>,
        Kukjin Kim <kgene@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     =?UTF-8?q?Martin=20J=C3=BCcker?= <martin.juecker@gmail.com>,
        Henrik Grimler <henrik@grimler.se>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        phone-devel@vger.kernel.org, replicant@osuosl.org,
        ~postmarketos/upstreaming@lists.sr.ht
Subject: Re: (subset) [PATCH 6/9] ARM: dts: exynos: use generic node names for phy
Date:   Thu, 26 Jan 2023 11:17:44 +0100
Message-Id: <167472826059.11433.2855433349956906292.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230125094513.155063-6-krzysztof.kozlowski@linaro.org>
References: <20230125094513.155063-1-krzysztof.kozlowski@linaro.org> <20230125094513.155063-6-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 25 Jan 2023 10:45:10 +0100, Krzysztof Kozlowski wrote:
> Align HDMI and USB phy node names with bindings expectation.
> 
> 

Applied, thanks!

[6/9] ARM: dts: exynos: use generic node names for phy
      https://git.kernel.org/krzk/linux/c/7bac2cd7fff73dc2b3600c83aeb1c57100cafe70

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
