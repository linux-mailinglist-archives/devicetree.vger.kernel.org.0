Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CD5C4551712
	for <lists+devicetree@lfdr.de>; Mon, 20 Jun 2022 13:15:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241683AbiFTLP0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Jun 2022 07:15:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33766 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241340AbiFTLO6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Jun 2022 07:14:58 -0400
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 86F5C15A3C
        for <devicetree@vger.kernel.org>; Mon, 20 Jun 2022 04:14:41 -0700 (PDT)
Received: by mail-ej1-x629.google.com with SMTP id n20so13616025ejz.10
        for <devicetree@vger.kernel.org>; Mon, 20 Jun 2022 04:14:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=o55VRGBgKVZI+BEVgAUvLDNLvJsbUGTBBuiWrNzmrso=;
        b=DzI+j2NG7eG8cjYB0T6jM7DB+lKRqpvUTvX0qtnYZPfP+ixiNCP1/A/79zEmgltJW6
         Vie8KSm+7oY724eICEDYhepWCqemDfdyGJ4MMaRVSlS3FfS1zG+JE440Q/+WMrTwWaZk
         qApYT/ARRcB9O07dwwUUKJPxIEotrFnN0U6+rxNa0Lndbm1l32pU6Jtza2yToDpzeWs3
         LqGx/Pgfj9PYw8SbGmaibO9Iyd5gWXAngginxgtGuksYWTEGQOdwCfBOEV/ntrr8Xx3r
         jk9o4/tmbVEXpYX23d9NhQ20l7Usp5GjEkR2AqFm6M2bdpirgsXhsppTUnCjgIDRuzqo
         eoMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=o55VRGBgKVZI+BEVgAUvLDNLvJsbUGTBBuiWrNzmrso=;
        b=2cwbMFlJldTl0exQl9qH6OLiII5+R4C1HU2N4kINmL/p33e3qGKoKx8kTEFQSd3jcB
         1TNLMEn+MxOWD1fbbx3C53PpWxPaRZRkN6XLtzw2+dRD1ZJKPIALe64N15iis2ZNAB/a
         HDFxy6XwvP071OkgR6OcP4pQXHJFfih7XC2T1zWnxfzK5Af2K0P7L96uTKbQTTbRUt3+
         Y8pb8wkce4RBg4DO3an2+TzTtcACNFyU8LcOII3u8lCo+fqOAxbdzwWsg2zxOeBZdaOi
         zLsSte7FQ8ByS0grichAAxawoDbCUd6zuYbFA9jSeP+o2XFasbBM8SZsy0oPHvXw7UBb
         wSdw==
X-Gm-Message-State: AJIora//XH4bdoHdugIZyhXmNiajRS5DXFgrgivdIEQ45vNtN/dp6YP7
        pXnwWGEuS/dlq6GOIJKnGo2IGA==
X-Google-Smtp-Source: AGRyM1t2B2A4MQ/Jq/AFGhA8VOBClv4hX99uyL3KVUiSk5X3mbo+jilJlcCYF7yi43wGQtHOG7HhqQ==
X-Received: by 2002:a17:906:38d0:b0:715:8483:e01e with SMTP id r16-20020a17090638d000b007158483e01emr21137847ejd.265.1655723679868;
        Mon, 20 Jun 2022 04:14:39 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id c26-20020a170906171a00b006fed9a0eb17sm5699969eje.187.2022.06.20.04.14.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jun 2022 04:14:39 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Arnd Bergmann <arnd@arndb.de>, arm@kernel.org,
        devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Olof Johansson <olof@lixom.net>,
        Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
        soc@kernel.org
Subject: Re: (subset) [PATCH v3 06/40] arm64: dts: broadcom: align gpio-key node names with dtschema
Date:   Mon, 20 Jun 2022 13:14:31 +0200
Message-Id: <165572367262.35195.14465437731239075361.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220616005333.18491-6-krzysztof.kozlowski@linaro.org>
References: <20220616005224.18391-1-krzysztof.kozlowski@linaro.org> <20220616005333.18491-6-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 15 Jun 2022 17:52:59 -0700, Krzysztof Kozlowski wrote:
> The node names should be generic and DT schema expects certain pattern
> (e.g. with key/button/switch).
> 
> 

Applied, thanks!

[06/40] arm64: dts: broadcom: align gpio-key node names with dtschema
        https://git.kernel.org/krzk/linux/c/ea559c81b61603d4044df6f826f10a832c42c98c

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
