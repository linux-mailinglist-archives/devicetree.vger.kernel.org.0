Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2090B7818F5
	for <lists+devicetree@lfdr.de>; Sat, 19 Aug 2023 12:41:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230417AbjHSKlu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 19 Aug 2023 06:41:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48014 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230425AbjHSKla (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 19 Aug 2023 06:41:30 -0400
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4F7F2159A1F
        for <devicetree@vger.kernel.org>; Sat, 19 Aug 2023 03:02:37 -0700 (PDT)
Received: by mail-ed1-x531.google.com with SMTP id 4fb4d7f45d1cf-528913c261bso1831568a12.1
        for <devicetree@vger.kernel.org>; Sat, 19 Aug 2023 03:02:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692439356; x=1693044156;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FqA2dzgj9QmLzDXo4YUUMqSg3gEmMroT5DLdruIjLJk=;
        b=SUOET5xTNiLSPMfxzAwsNXjStoOJrV2Zk2BKutSOce6g6/1oVT2JMDrcVf6DwYSXLv
         7xTNDLKRpggw5H48bS0iY1axDWQWANTPZvWxhNE6SxJ6fAV8yb11QCDorUaF1AEvd85f
         RN8vGrEYmY7A4Pup8LxU+sAy+HbPypmNVZzies1zcYlgYchkYOH371wUHwbXEQGKn+oi
         LkpEXcyi08B1eVIl1xv4J8TWmbXRcQEgOCdFNkQJgRkmvuoL6GNMcZ7ilr9hXS6EaltC
         ve6uPyY/dTzN+TLMsjiEp8htASafNliMXNcgnnNp3jMwFrH3C/rGfss0jMsYRTQJohGE
         HxPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692439356; x=1693044156;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FqA2dzgj9QmLzDXo4YUUMqSg3gEmMroT5DLdruIjLJk=;
        b=XFf9MuhU0T1ngFZFVTh2C+yA9nakKx5OvYKFv0Afa6TsiCmubSC3ahj+e+6aceIf8o
         R73cKXUgLsQtSRbH+o82JWPqhDwEFVWSODH0juzo2ObnQji9mmTeEvxObMhhmrLWBRtu
         fG1NxmS4L0ZL6YZSMjN9GueTNWzkzKXW8KV6lKpEcsEnG09nkxwi6/+BifmZyvvZk3dj
         GCY8UPe1UYze377yGRmX9P8ZgKfQhT2drG9WCEqcKp3xdlTufsK2UvsxjqoKalHyLT1q
         gx5MiMe+FHh37oc5CSHORgOqKnkxNivRVQe+6SiJXm7Ec05I6LbKyZlD4bF6C3gQL1MP
         O/ow==
X-Gm-Message-State: AOJu0YzzSWwVPO/iS+pLHN5XCg6Jg994+aGAGifkpbD2rsVgLNnZfPdO
        btbbZDbpE3LkvDLl213Fd07UOA==
X-Google-Smtp-Source: AGHT+IF28xdB964xNk29bQixs4j2/690MuVyNMs4Sdu6nXkxZo0cMp24szsphyhMTOpNm6a4BvLVhA==
X-Received: by 2002:a17:907:b1a:b0:99c:6692:7f76 with SMTP id h26-20020a1709070b1a00b0099c66927f76mr1350977ejl.16.1692439355832;
        Sat, 19 Aug 2023 03:02:35 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.198])
        by smtp.gmail.com with ESMTPSA id v8-20020a1709060b4800b0099bc8db97bcsm2404892ejg.131.2023.08.19.03.02.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 19 Aug 2023 03:02:35 -0700 (PDT)
Message-ID: <c76ee5fd-e238-3a5b-3607-9548f6b7a3d0@linaro.org>
Date:   Sat, 19 Aug 2023 12:02:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH] dt-bindings: pinctrl: renesas,rza2: Use
 'additionalProperties' for child nodes
Content-Language: en-US
To:     Rob Herring <robh@kernel.org>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Linus Walleij <linus.walleij@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Magnus Damm <magnus.damm@gmail.com>,
        Chris Brandt <chris.brandt@renesas.com>
Cc:     linux-renesas-soc@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230819010928.916438-1-robh@kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230819010928.916438-1-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 19/08/2023 03:09, Rob Herring wrote:
> A schema under 'additionalProperties' works better for matching any
> property/node other than the ones explicitly listed. Convert the schema
> to use that rather than the wildcard and if/then schema.
> 
> Drop 'phandle' properties which never need to be explicitly listed while
> we're here.
> 
> Signed-off-by: Rob Herring <robh@kernel.org>

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

