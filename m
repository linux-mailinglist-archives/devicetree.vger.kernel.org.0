Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 70BA366DC20
	for <lists+devicetree@lfdr.de>; Tue, 17 Jan 2023 12:19:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236435AbjAQLTS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Jan 2023 06:19:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39454 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236605AbjAQLSQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 Jan 2023 06:18:16 -0500
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CFD0333456
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 03:18:14 -0800 (PST)
Received: by mail-wr1-x42e.google.com with SMTP id z5so29152885wrt.6
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 03:18:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qzKpj6N65RyfEWZaM/311Snl/iRS/oRAMMEJaUx5YSw=;
        b=w4NjWRX2AtBqPYizk+hvep+qNr9EePwIzgjLONWI4zTERxhmzkLwwyQG47T10+ITXR
         j3ViZP81F+rWxpdsELw2Wr5nQnPRZ2m2qAfGYfKmGu2/pCqwTQvNIB6TUr52cL6L/XLQ
         vOpqIisxMxJBk8aJI5/0jPKdUDcVyCgzn67dW+DLIIVgvWETzcDnToVejAcvabZXgalf
         aLaSpjp8PdKy1r5AsCsHPcyiI/N+1lxSQ4lIlfWO7w2uEiHfkCXKdDm0O7nBbB45PRVy
         59A+tzc5l++SGLfKS5QeBVdGO6r3koEIgegNLRq0wqUATOSMx0fY/ZSQI5Hello55Tb5
         sCNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qzKpj6N65RyfEWZaM/311Snl/iRS/oRAMMEJaUx5YSw=;
        b=ZEpB9D7vvwkpJa1b2ydLksyiOoO6hl84/LkeOl0gVNzAAPhLitqh3ATycylrGWX6J2
         QY+JTc5lOL60y/XN7OyrQyaDgWZCJfidz5cwgExyYXwYBS0cmJONKCHBta44BtRs0svI
         73h2C/ilLQtGDryzeZ3bTugxADaHP7TZY9b0XdbUNAOVGi9PrPTYnNXqICHEkcEZt0t8
         zBSmPT4Stco6AYCyBBbSAvzBlbWPk6osVvrdzPNY7+Qdx9GgSZVgoy0LSDovK2AZ0sYn
         RbuUF6RnknSS4kpjokT8bpazUXKwl6Pj1vP08tTogxgHM99qIav4EyUI/p9jaiG2LSQ1
         EPvQ==
X-Gm-Message-State: AFqh2kpqcYHX2rBvg4JxUW8B+mCir4fWOI8pWy9lylxATzS+mnyApA/b
        h2v0f/dAzwxu7ll4kkMvyGoHjg==
X-Google-Smtp-Source: AMrXdXvoNzN9Kcj1yCUu+9eKnZ1i5BWtuXWnAzxfExRVNV/2hW7BsH5nnVL4/jyuvP/M7RMFtGmHFg==
X-Received: by 2002:a5d:608d:0:b0:2bb:cc51:7617 with SMTP id w13-20020a5d608d000000b002bbcc517617mr2683557wrt.42.1673954293435;
        Tue, 17 Jan 2023 03:18:13 -0800 (PST)
Received: from krzk-bin.. ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id w10-20020a5d404a000000b00275970a85f4sm28466717wrp.74.2023.01.17.03.18.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jan 2023 03:18:13 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Padmanabhan Rajanbabu <p.rajanbabu@samsung.com>,
        alim.akhtar@samsung.com, rcsekar@samsung.com, robh+dt@kernel.org,
        lgirdwood@gmail.com, s.nawrocki@samsung.com,
        krzysztof.kozlowski+dt@linaro.org, aswani.reddy@samsung.com,
        pankaj.dubey@samsung.com, tiwai@suse.com, broonie@kernel.org,
        perex@perex.cz
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-samsung-soc@vger.kernel.org, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: (subset) [PATCH v4 5/5] arm64: dts: fsd: Add sound card node for Tesla FSD
Date:   Tue, 17 Jan 2023 12:18:03 +0100
Message-Id: <167395418605.64421.16134681081396817546.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230116103823.90757-6-p.rajanbabu@samsung.com>
References: <20230116103823.90757-1-p.rajanbabu@samsung.com> <CGME20230116103912epcas5p2ae807f1b6435e103a6527332e42f03a2@epcas5p2.samsung.com> <20230116103823.90757-6-p.rajanbabu@samsung.com>
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

On Mon, 16 Jan 2023 16:08:23 +0530, Padmanabhan Rajanbabu wrote:
> Add device tree node support for sound card on Tesla FSD platform
> 
> 

Applied, thanks!

[5/5] arm64: dts: fsd: Add sound card node for Tesla FSD
      https://git.kernel.org/krzk/linux/c/56a14f01a54568e049e22c46ffc654602bbd01d1

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
