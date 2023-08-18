Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3DFD57808C8
	for <lists+devicetree@lfdr.de>; Fri, 18 Aug 2023 11:40:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245309AbjHRJjg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Aug 2023 05:39:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55258 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1359367AbjHRJjZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Aug 2023 05:39:25 -0400
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ABC6E3A84
        for <devicetree@vger.kernel.org>; Fri, 18 Aug 2023 02:38:59 -0700 (PDT)
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-99c1f6f3884so86412766b.0
        for <devicetree@vger.kernel.org>; Fri, 18 Aug 2023 02:38:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692351538; x=1692956338;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nqZ6MWOxrmCXsW/1kQTa72MKrzFFrYHg0blm9NC3dMI=;
        b=FNHUYJDSoulIb7iBs9FTgQW++CfGhDKiloUS7Ei7239N+/KHeex3fNWNdYCiHHWdIS
         GgY/EyKIKD0lANvQD7eyF7k/vvIWL0G/e0Gyf0lLcQJOQjRPCxOnwWzWIhLpfXrJKTL5
         z82c3H2rkwg2iXI5NBI3G/3310GYiZ8lGvE7FQ3Fgd7KNNr1W5Y5SqhykMCAp6DXCCU7
         HYKgnikcSRFk45zJ6ausrUk523XHNPRYXS+h/JUJG1a3oLZ/Gssj7QezNNWrWsYUypFt
         +CxIdItsvSYvDKqrGsM+YJeccaHUklQ4NbfPaw3GBiiwrMpf3v1VGsCvhgqpqhoEyPRB
         zGUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692351538; x=1692956338;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nqZ6MWOxrmCXsW/1kQTa72MKrzFFrYHg0blm9NC3dMI=;
        b=OHBKg2TNYnzpGD1ltV/p6TmPe9lxt3DLWpC58In5CPDcqqoMuqUOGwomYc52Xiuv7e
         SlI42707+zEeZY9sSWsx205zcuSOuAbHqJvP7DPvWmtwT5ry8kReRiuIO76PCVZxAlUr
         da7oNo4JwIq1Jbadp6B7C9BEXkMOKViBYzgqmFE7lzxpBzG8aVLhkp9o0flTFwPP7Hhg
         MXorHWxzsaLsR/ObMUykZAM29Q3vxRRleoG/4IL2edrORQITaNuP+XO+xSNlnblE3IIF
         uI51WgcZU68e1EFEtrksorgcuQE0AZNNiFlkqB+WopxGWjEWjTgagrB/pSsKRbqVmWpQ
         +rlg==
X-Gm-Message-State: AOJu0YyIh21D0JihTfyM0satHbjIw7y2c1c3iPNhVdNF1LPl7+ywhr0Z
        Nxx1U0cjt5Cffs4KzgslIZ/P+g==
X-Google-Smtp-Source: AGHT+IEK5isAGbMqbI3eLOVuD1pqDu9watKUUal3vatHRjDp8dA8ntj8RXcltrZlxugpJdSKvlFLug==
X-Received: by 2002:a17:907:6e20:b0:99b:5689:1331 with SMTP id sd32-20020a1709076e2000b0099b56891331mr1886009ejc.59.1692351538183;
        Fri, 18 Aug 2023 02:38:58 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.198])
        by smtp.gmail.com with ESMTPSA id o26-20020a17090608da00b009a1082f423esm454543eje.88.2023.08.18.02.38.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Aug 2023 02:38:57 -0700 (PDT)
Message-ID: <6dda7952-9622-0fe9-3daf-52816f399d2c@linaro.org>
Date:   Fri, 18 Aug 2023 11:38:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH v3 2/2] arm64: dts: qcom: sm8550-qrd: add bluetooth
 support
Content-Language: en-US
To:     Neil Armstrong <neil.armstrong@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230817-topic-sm8550-upstream-bt-v3-0-33f386e7b461@linaro.org>
 <20230817-topic-sm8550-upstream-bt-v3-2-33f386e7b461@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230817-topic-sm8550-upstream-bt-v3-2-33f386e7b461@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17/08/2023 10:47, Neil Armstrong wrote:
> Enable the WCN7850 bluetooth over the UART14 link.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

