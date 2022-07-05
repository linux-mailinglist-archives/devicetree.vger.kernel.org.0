Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A8E42566851
	for <lists+devicetree@lfdr.de>; Tue,  5 Jul 2022 12:42:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231840AbiGEKmD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 5 Jul 2022 06:42:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34248 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232716AbiGEKlu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 5 Jul 2022 06:41:50 -0400
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A42191573F
        for <devicetree@vger.kernel.org>; Tue,  5 Jul 2022 03:41:45 -0700 (PDT)
Received: by mail-lf1-x131.google.com with SMTP id t19so19193188lfl.5
        for <devicetree@vger.kernel.org>; Tue, 05 Jul 2022 03:41:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=tU++a3VhXs0FHkamB71zlsh9dBT4mNkgeu3fGVWqT0Y=;
        b=AbTKuV5dBPW3I9PCByEGA8Hg7m81MxuLH9kH5B4lEXfNJM7ZBdry6/bhXdCT0jzjhW
         FmBqbZpR9aanW0p8bWoZKzgCdTeT6CSRFr52glCPF7KsnEr7TY6j/ANrvdVCvW3EmnTR
         GI0MlbDzX/hQ5dl3Rwc6TI2PFmKpdnU87ITukWLJKe5q4w4BnUniIwMkyxCPWjhunGnC
         9x+eCRcupZwP+lm724e9WagY4OudDVtahADTuRat/jhsfo/vOXz6FrbnGpdCnLwHwhl0
         ZV6oHc9YADQ0k081bmVqrJC2H/pb/DqySpaxIODDgHNf0Gez74ZP+j/OA3IYhvgfHgPC
         4Eyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=tU++a3VhXs0FHkamB71zlsh9dBT4mNkgeu3fGVWqT0Y=;
        b=zia/+yPNrAQlp80beT94iZDGSaH9NzSCJP5te6WJrwQzVjk4YCUo8sZz8a6Uz+LDfx
         FN+jal3wIyT/8qPtqSMlse23uRmVse2StEbLfefPV7XXbA28bxf3F+22Nr838j85KvQF
         gLjrCuFAf2braiSeuEC+wzOi67ORzO2jkMQDiOrUtpZTYhKrQmkIDjj+mhqT5gmrRtpo
         dpbhx9fJgo/LEat883PxNh1CSNktwFM8Kd67KPVJNjxzDO+1Et9feQ+w3ZQh8ZTms0cd
         ZW4+OlV9jm6XiwMZW4uPJ3WbEsjx8Dq0hCB15Ki7/MVk2Hamq8fmYmethgjHv6XWj4FE
         0gzg==
X-Gm-Message-State: AJIora9kGaSo0nBh1wrIX/GBXuyYBnqLTVuSX1R0obkLBYnA0NXSQN2y
        9BwUz/0FCJT2iW47E2IPYuxA+g==
X-Google-Smtp-Source: AGRyM1uk+uaSzYZ2JyDGqUITJSzmPAOmf/idfI6DZ5PmsT8n7cvtwS30sgV0JOlHv+lcMcuYfnLaqA==
X-Received: by 2002:a05:6512:1393:b0:482:b5a3:3fe0 with SMTP id p19-20020a056512139300b00482b5a33fe0mr5203908lfa.265.1657017704055;
        Tue, 05 Jul 2022 03:41:44 -0700 (PDT)
Received: from krzk-bin.home ([84.20.121.239])
        by smtp.gmail.com with ESMTPSA id q24-20020a056512211800b0047f615b5cbfsm5619814lfr.211.2022.07.05.03.41.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Jul 2022 03:41:43 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        chanho61.park@samsung.com
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, alim.akhtar@samsung.com,
        devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: exynosautov9: correct spi11 pin names
Date:   Tue,  5 Jul 2022 12:41:36 +0200
Message-Id: <165701769258.78614.14200320121935846404.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220627005832.8709-1-chanho61.park@samsung.com>
References: <CGME20220627010103epcas2p174bb652624219cadc106275abf51f83a@epcas2p1.samsung.com> <20220627005832.8709-1-chanho61.park@samsung.com>
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

On Mon, 27 Jun 2022 09:58:32 +0900, Chanho Park wrote:
> They should be started with "gpp5-".
> 
> 

Applied, thanks!

[1/1] arm64: dts: exynosautov9: correct spi11 pin names
      https://git.kernel.org/krzk/linux/c/ba205449828f47f80532a1453beef5eed2982176

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
