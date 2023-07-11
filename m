Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6018074E68D
	for <lists+devicetree@lfdr.de>; Tue, 11 Jul 2023 07:53:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230047AbjGKFxv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 Jul 2023 01:53:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37560 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230035AbjGKFxt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 11 Jul 2023 01:53:49 -0400
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com [IPv6:2a00:1450:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 461E11A2
        for <devicetree@vger.kernel.org>; Mon, 10 Jul 2023 22:53:47 -0700 (PDT)
Received: by mail-lj1-x233.google.com with SMTP id 38308e7fff4ca-2b6ef64342aso83633661fa.3
        for <devicetree@vger.kernel.org>; Mon, 10 Jul 2023 22:53:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689054825; x=1691646825;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VYgPeMSCL3nNziCu2Z17cxZzWPhKGfRWNw9RgpV/GLs=;
        b=gVqQHkutiocfEv2pnMd0jHZ+FUNYXoqq69H5hH/mm/zbNFlWIfx5yLSj4m8ZDUrtdw
         jWaICxwg0Zmd9qOFmhd5A95xrhC1wZoER7C1KyCced8M+FZd4NpvV3zX3OqgRSD3Bt5T
         IcugLGA7tnyttr+QYK+zRfJnfs8Q5uxSuTFoTtY1NCyFWS60B3/9Lxw4U4gMz5Q0aBBJ
         LoNpXKrYhOjF57NW7s6u1WM08hN6pBgpU0Gga/V9gueL6Vbw0dpDNU+t5aJoGcighFMm
         P0UQJ8Or2Ee46FwssADTVTVEk7pxsU3FhnaSoslp4uRvQZB2t0WUuj9MeOOM7IcQPjmT
         Tw6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689054825; x=1691646825;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VYgPeMSCL3nNziCu2Z17cxZzWPhKGfRWNw9RgpV/GLs=;
        b=Yge4DCnuZmco8IgKD7LTMe87tWMNWLrsSK8xYdPikANfw7HwooPKf+zQONgEkE+yhF
         YfjFnYZ4HbAXSJ+33qUIYtokk4pOmPMiGG3OLmPasjQ0Mt44qZW0lmWupA4zzhQ96yTc
         auJMQFOZef6th73FUjevSlc1U6AH0QISMdo+9hwy0vQzJt/l7ZQP7HkYH7X2TUwilig5
         u6C2PG6Sz5zcTGqjBK1OMs7/6wysA08/aObSkIapddDkHivxAdlIVukJj9nMTUUy/qyZ
         6ltLfnuamkzG/GXE3FucPQsurueMoX49DNi9kqlrIcWAYKkT9+yD57vggU+p9KfqvIRF
         eY0Q==
X-Gm-Message-State: ABy/qLaLxJwGN5Bry0dslwQVEJiCfoIFDfJScXOjSXSld2ijWHEjNr7+
        W0Th2ZAaBm4tZ8mJ/rlqUmz5Ew==
X-Google-Smtp-Source: APBJJlFV9GMTTfMplww67OlM4c38B4zQ3xlLIq0Y2DFMx149QmJv4/QIo8CBE4IQ+dWRG7ueBNzMrg==
X-Received: by 2002:a2e:7c09:0:b0:2b6:e7b7:a163 with SMTP id x9-20020a2e7c09000000b002b6e7b7a163mr11749149ljc.27.1689054825381;
        Mon, 10 Jul 2023 22:53:45 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id i13-20020a1709061ccd00b00993017b64a9sm634944ejh.223.2023.07.10.22.53.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Jul 2023 22:53:44 -0700 (PDT)
Message-ID: <afbab9c3-ae67-1a30-6fc5-e031f9f30286@linaro.org>
Date:   Tue, 11 Jul 2023 07:53:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v3 2/3] dt-bindings: power: Add compatible for sdx75
Content-Language: en-US
To:     Rohit Agarwal <quic_rohiagar@quicinc.com>, agross@kernel.org,
        andersson@kernel.org, konrad.dybcio@linaro.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <1689054169-10800-1-git-send-email-quic_rohiagar@quicinc.com>
 <1689054169-10800-3-git-send-email-quic_rohiagar@quicinc.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1689054169-10800-3-git-send-email-quic_rohiagar@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/07/2023 07:42, Rohit Agarwal wrote:
> Add a compatible string that can be used to list PDs for sdx75.
> 
> Signed-off-by: Rohit Agarwal <quic_rohiagar@quicinc.com>
> ---

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

