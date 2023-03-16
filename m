Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 910D26BD918
	for <lists+devicetree@lfdr.de>; Thu, 16 Mar 2023 20:27:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229794AbjCPT1C (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Mar 2023 15:27:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53862 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229733AbjCPT1C (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Mar 2023 15:27:02 -0400
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5D179C97ED
        for <devicetree@vger.kernel.org>; Thu, 16 Mar 2023 12:27:00 -0700 (PDT)
Received: by mail-ed1-x52c.google.com with SMTP id eg48so11735170edb.13
        for <devicetree@vger.kernel.org>; Thu, 16 Mar 2023 12:27:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678994819;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=obGhRVBgxVsoKfoAraLrsIfu5YZtn5joYSkK6dkY8Jw=;
        b=R0ZIZfDts3LKMi1Z2U3R49WMNXPLHZkfcD2v8zVT60Dd371vuhHnm1KweEkMPP10Lw
         hzZMAzKJB+EU0xw6aNGMZcfPHpmvC19IC75zrPySDMLA4w/FebYyWHNLfivsylVFK4BY
         mUeXR883NQpeRLCvWQl6B41otjFoyDC58oGHnh/e/FS55ced4C6rGIhu7TLovUA5MNS5
         o2+TdhqxvhPa3CtyHGjiL8IAVkGI0p1+NImzmd8oK5Ffefz8zHCiVk07S4S8K0G27DbT
         VVCfgUgVSLCVQmUL2uFsLf1zHBi0bszmd//Ra8kdtuKE2fhetY0IeZz5qS18jOlqvGj7
         iEXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678994819;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=obGhRVBgxVsoKfoAraLrsIfu5YZtn5joYSkK6dkY8Jw=;
        b=GTTRQtxdPHnP1AtVnkTNchDMhIexQiaM4uYpHSckt5wP/0or70dVIKFXqNwLc58xs6
         G9ZUjJdEBOd32pjNp0vNl8wbWHXEN6yFtW5K+vV5MQf+Wlo395TTYJBPx3h90OaLCl3k
         bi23S64PYmCDPn0grt2QIAx+g7L3JTSkT0bAfUKq7wXfjALtSZMWqpkUWccNY+EfyxAn
         nEcwTlPyAp2gsWi0GMpTROUqhDKzkmq7t9hMFvquzO5jXrbtKN5FapldRw1y1evvhVC1
         vdu5tgsbUTfRjiF1Dh4yWn+8JbKmvmKlOJ664YZ1BTzaSTyX9DhQ9O9fkTT0EM0FoFb6
         LAiw==
X-Gm-Message-State: AO0yUKUe2a2W6WoJXDH8M/+9AmSCdIqQVnzgvtlPjzwfrkMUFz/coEQl
        Xzd0o9mw3c7ZrIlIfK4LtmcQ/Q==
X-Google-Smtp-Source: AK7set+El0dLR+g561OC3CcVULUu2vNHP4ZN63m5S7UB7D/XIx5a6TZXgTqJRucoIoen/t5yGWzIKA==
X-Received: by 2002:aa7:d496:0:b0:4fd:2007:d40b with SMTP id b22-20020aa7d496000000b004fd2007d40bmr720610edr.9.1678994818767;
        Thu, 16 Mar 2023 12:26:58 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:9827:5f65:8269:a95f? ([2a02:810d:15c0:828:9827:5f65:8269:a95f])
        by smtp.gmail.com with ESMTPSA id b44-20020a509f2f000000b004c09527d62dsm169758edf.30.2023.03.16.12.26.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Mar 2023 12:26:58 -0700 (PDT)
Message-ID: <7950a355-4ffc-089a-4059-9111a2d09544@linaro.org>
Date:   Thu, 16 Mar 2023 20:26:57 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v3 1/2] dt-bindings: input: touchscreen: Add
 'goodix-hold-in-reset' property to Goodix
Content-Language: en-US
To:     Jan Jasper de Kroon <jajadekroon@gmail.com>
Cc:     alexandre.belloni@bootlin.com, broonie@kernel.org,
        devicetree@vger.kernel.org, dmitry.torokhov@gmail.com,
        kernel@undef.tools, krzysztof.kozlowski+dt@linaro.org,
        linux-input@vger.kernel.org, robh+dt@kernel.org
References: <20230311134655.486973-1-jajadekroon@gmail.com>
 <20230316154749.68304-1-jajadekroon@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230316154749.68304-1-jajadekroon@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/03/2023 16:47, Jan Jasper de Kroon wrote:
> Add an optional 'goodix-hold-in-reset', to the Goodix touchscreen
> device tree binding. When set to true, the touchscreen controller will
> be held in reset mode during system suspend, reducing power consumption.
> If not present, the property defaults to false.
> 
> Signed-off-by: Jan Jasper de Kroon <jajadekroon@gmail.com>

Duplicated message, so just for formality: discussion did not finish.

Best regards,
Krzysztof

