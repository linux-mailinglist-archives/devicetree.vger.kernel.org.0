Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3515B67C859
	for <lists+devicetree@lfdr.de>; Thu, 26 Jan 2023 11:19:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234415AbjAZKTD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 Jan 2023 05:19:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42688 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237013AbjAZKS3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 26 Jan 2023 05:18:29 -0500
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DC98253B38
        for <devicetree@vger.kernel.org>; Thu, 26 Jan 2023 02:17:57 -0800 (PST)
Received: by mail-wr1-x431.google.com with SMTP id t18so1262185wro.1
        for <devicetree@vger.kernel.org>; Thu, 26 Jan 2023 02:17:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6z34fmBFNDBt2+q06vNBZRGJLH/EgsBPP//vb2pYq4c=;
        b=rRW+CtGFsOX+61GmPS24FW99ChsfZ80tH6HR6eJc+EblK9j8e9cSPX36Qg3zfnTPRq
         5u3pupvtJECxDNpdbvD4gzgsuVFsGzSg0eClL7XZ87pEKvvmO+resNATlmC9utytzWYX
         KUY20CsfgqKwuYBbSdOleQ9gdGAx02CniCp+MSOz72ikNxl7E/5aLdwMiC3v2Uif8HLR
         vIX4RpbWVVPQJiz4/yEXFIHozL0RTXcJtaMHagM+4xuMdvFn37IqxlmIBjOkjXUHeNgI
         nGgkZ08rdwkR/TE3J7gOUQNEkgemLd741GPAcofhD0ACgbRI2tGhAGwPJaSaufLM34PE
         rEgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6z34fmBFNDBt2+q06vNBZRGJLH/EgsBPP//vb2pYq4c=;
        b=SAEiSpoMk1hjkfQZ1I6zykXnrxlJ3ZURwRi+9tbnpGVavJ/6nw3BBiQ6T3JnGxddQx
         OwMEkr2ugf9+/GmnTet64SmH7Tc11TVw1wBHCkPf458dEuEJKoBnIGT8aJS/KGpkzU3D
         0m3j13ayKpwAmADk1hoePp2uahEDli9eiCUJfdln3YxSTjK8qsMaDFncKmqR9+iGkpMv
         3x0SSLOlPXJCVplfAq+87uemDHGNNedyFcexcwjKn02cUq1xdfrOb8RpZYm3wqqUHOia
         qKyo08Lj+iGd3zm3XPJeniAk5r/0u2ITm8zqdjvAh9yx0+kANtxwi0UWNoGjOtwC6Hy7
         2TSg==
X-Gm-Message-State: AFqh2kpEYjJsbkk5/EM8f8oyHOD5RdRBKRNBvaqOkxntXg0I9SgVzoJ4
        KAgDYrogw/8xxXhwveyjRzr/hA==
X-Google-Smtp-Source: AMrXdXtc+pqtGjIHD3l9l2nxVr6EYPuHKfoEm+Mg8GpqzGGIwdvCMdY/baBL+vBIpkE0FlDSXTS7bQ==
X-Received: by 2002:adf:c78b:0:b0:2bd:dd13:170f with SMTP id l11-20020adfc78b000000b002bddd13170fmr38484445wrg.26.1674728272547;
        Thu, 26 Jan 2023 02:17:52 -0800 (PST)
Received: from krzk-bin.. ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id a17-20020adffb91000000b002bddac15b3dsm868315wrr.33.2023.01.26.02.17.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Jan 2023 02:17:52 -0800 (PST)
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
Subject: Re: (subset) [PATCH 7/9] ARM: dts: exynos: use lowercase hex addresses
Date:   Thu, 26 Jan 2023 11:17:45 +0100
Message-Id: <167472826059.11433.13535148546376778683.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230125094513.155063-7-krzysztof.kozlowski@linaro.org>
References: <20230125094513.155063-1-krzysztof.kozlowski@linaro.org> <20230125094513.155063-7-krzysztof.kozlowski@linaro.org>
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

On Wed, 25 Jan 2023 10:45:11 +0100, Krzysztof Kozlowski wrote:
> By convention the hex addresses should be lowercase.
> 
> 

Applied, thanks!

[7/9] ARM: dts: exynos: use lowercase hex addresses
      https://git.kernel.org/krzk/linux/c/9ca5a7ce492d182c25ea2e785eeb72cee1d5056b

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
