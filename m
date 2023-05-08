Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6E17C6FB5A7
	for <lists+devicetree@lfdr.de>; Mon,  8 May 2023 19:04:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234358AbjEHRE0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 May 2023 13:04:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56856 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232876AbjEHREZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 May 2023 13:04:25 -0400
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 009A96A53
        for <devicetree@vger.kernel.org>; Mon,  8 May 2023 10:04:22 -0700 (PDT)
Received: by mail-ed1-x531.google.com with SMTP id 4fb4d7f45d1cf-50bc3088b7aso9342533a12.3
        for <devicetree@vger.kernel.org>; Mon, 08 May 2023 10:04:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683565461; x=1686157461;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KMFdLRNKQ89jJWRkxs/WTlt3m6Pbvn2x9h9FIbEb5x0=;
        b=AxnghwstEQhO39B6QSm2G8PlgQCU/YSWbI6KEW0CUllAThoQL1D8ZF6rDIxZVaXieM
         ZkecNE0Jb9tUnJz7UFK2pHacZu1wBqY+tkndEA6n9zIqaEr8ccGdF7n3p6Y+anLuZyip
         12EHqkEa+iN2sRE7tZT+loysW9l7elKiXj69EqoQcFwJasVDepuh+W/Yop9ndEVThlaG
         8FlLKYBfiofA5AjSJeqbV0/Xper1I8iOZUIn/w7l6OMj1b6WrrvBCahDKX9nxNXPR2qd
         x/i11oI2LuvrrNBsMRf3SC3E5yX2Kb9Fw00p6OrTeuh25OHWkew0YllVcRPjrvnGbTXf
         6dOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683565461; x=1686157461;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KMFdLRNKQ89jJWRkxs/WTlt3m6Pbvn2x9h9FIbEb5x0=;
        b=LvHkOJcE4gTJYREDyJOcXflSOWJh+2sb97mXmkajZANELpw6XkI9yA6sCh3llhnfIh
         qfrXwFHfb9FK2VfFobbg9bOVlxo/y7bQBZ5GzsOG1oAAFqHkhloXUCzpaJm2VTXGCBhB
         agyOiBY46tk2wWj9lY6ZERBZpCRoyjSnytXyylWBmbfEdfyOVPGQUpOc3Go35JWtQFKZ
         1QhN5YWW3XgcS83KowuoB4sDH53K8ZvggWpEaVjmjgLCI0VTvtAZgYVqKQsxh2RexO98
         YDDTw75nHY3rnj5m3jQrfwoPbvGpgCKD58tCx5GQT4y0JLirRDhUEOvmkltX37Lre6BC
         WWPw==
X-Gm-Message-State: AC+VfDyf/BKeGV44Kuml+gwr3TePNoWvhG6kVdXuowIXvGbjilSwEqs9
        /BpSEDmZ7EYlVuz/I6CRM8OVfA==
X-Google-Smtp-Source: ACHHUZ7heYG/3KrnBEYF/XVGw7VXdqdVwiYVnNEeRZ+GWNpSFSE08M6AJptKknVSO+zhUto4UiMDYQ==
X-Received: by 2002:a17:907:1687:b0:94e:1764:b0b5 with SMTP id hc7-20020a170907168700b0094e1764b0b5mr11381209ejc.69.1683565461155;
        Mon, 08 May 2023 10:04:21 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:50e0:ebdf:b755:b300])
        by smtp.gmail.com with ESMTPSA id lh2-20020a170906f8c200b00965b7bf6aa5sm206862ejb.52.2023.05.08.10.04.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 May 2023 10:04:20 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     replicant@osuosl.org, phone-devel@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht,
        Jonathan Bakker <xc-racer2@live.ca>,
        Pawel Chmiel <pawel.mikolaj.chmiel@gmail.com>
Subject: Re: [PATCH 1/4] ARM: dts: s5pv210: align pin configuration nodes with bindings
Date:   Mon,  8 May 2023 19:04:13 +0200
Message-Id: <168356544397.281925.18235527816257782599.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230421095721.31857-1-krzysztof.kozlowski@linaro.org>
References: <20230421095721.31857-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On Fri, 21 Apr 2023 11:57:18 +0200, Krzysztof Kozlowski wrote:
> Bindings expect that pins in initial and sleep states nodes end with
> '-pin':
> 
>   s5pv210-fascinate4g.dtb: pinctrl@e0200000: sleep-state: 'gpa0-0', ...
>     'mp07-7' do not match any of the regexes: '^(pin-[a-z0-9-]+|[a-z0-9-]+-pin)$', 'pinctrl-[0-9]+'
> 
> 
> [...]

Applied, thanks!

[1/4] ARM: dts: s5pv210: align pin configuration nodes with bindings
      https://git.kernel.org/krzk/linux/c/7e98d368887c08a6cb79e79684f851e9bd9a3550
[2/4] ARM: dts: s5pv210: align USB node name with bindings
      https://git.kernel.org/krzk/linux/c/64f92c24aa57f8bfc389fe6638f0ffb7e4605928
[3/4] ARM: dts: s5pv210: re-order MFC clock names to match Exynos and bindings
      https://git.kernel.org/krzk/linux/c/6175f658ae07804f7c347903b8c6781e0914d3e6
[4/4] ARM: dts: s5pv210: add dummy 5V regulator for backlight on SMDKv210
      https://git.kernel.org/krzk/linux/c/b77904ba177a9c67b6dbc3637fdf1faa22df6e5c

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
