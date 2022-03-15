Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 260F04DA265
	for <lists+devicetree@lfdr.de>; Tue, 15 Mar 2022 19:27:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1351059AbiCOS1p (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Mar 2022 14:27:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39634 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1351062AbiCOS1n (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Mar 2022 14:27:43 -0400
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B22195A0A1
        for <devicetree@vger.kernel.org>; Tue, 15 Mar 2022 11:26:30 -0700 (PDT)
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com [209.85.208.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 786E33F4C0
        for <devicetree@vger.kernel.org>; Tue, 15 Mar 2022 18:26:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1647368789;
        bh=wELfczD6aecqiQgUFZDUOzRE+BacZC1tX6h2eC851HA=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=vabl2WNtkd+K4ZM+SbQdIrms55u1O2FFqjfH+p+dzigjsh0iTKl5iV5Npr0UXA+cd
         9U9B1BCFbTiqlkyLDvS+1sV0zF1cSYA/fz6Qc34ZHq+6iILxRROjC8NsPN+jcdaGcN
         e2cYrCer84ka88A4c+3Owz/nF3KfqQ8821NCLQKJf4/AXb5S8yW0Nkm3LF3F8/ERvE
         /qwf++r1bQrPKbWTx8egxOID7YvSxNzQ5CBFwPRhvv+ZlUArhBbrDLLTmcEMw23MC/
         SLySk3G0UtqZn9jafbSmD16AqvAXw7eBUCtHT5ow7ffLS8v8/U56c9ByuoaPF/Al5k
         gr55x9cVOr2xg==
Received: by mail-ed1-f69.google.com with SMTP id o20-20020aa7dd54000000b00413bc19ad08so11091286edw.7
        for <devicetree@vger.kernel.org>; Tue, 15 Mar 2022 11:26:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=wELfczD6aecqiQgUFZDUOzRE+BacZC1tX6h2eC851HA=;
        b=VR46u2vsZ4g+oKOu8JaUrp/M0KcFQ1howlj70/31IHqt8+seq7bQHGjbkWEPJym36y
         p1V+xZhs+qEGTs4ZuMOFwWDMTKCjYnh754lQp/IGDVEw4ifmzu8UHYcvk9tZWYu9cJ24
         3XLAaawZ40Up+m025Stc9jzzMddoU84H3wnQrdXBhpK+d8WPAItSzesOjkpokV5frB/E
         fSIIARFRdWPgj3a4YjnagSZDBfOfpXULfTxDX0DP1SjwQmu3IihXTfHNAlwXv8+eYfS1
         uckZQ8Ya0RJEtTOOW9G6hOcNLmYdhRvpkZYTri1afrCu+Aj6saqK3pWUqa9UhACElzAw
         GfGQ==
X-Gm-Message-State: AOAM531xFwQu24RvDJiJC2f8/rFa4C8RODD+7HksQ/4kNZJYsy6VKfb1
        9+wTZdWa1Eql5LFfGBUP8c7Kk0UXKR9aF3ymz94trAz5+RmgVFsrjOqtDD/uFrEzGuhizLO8nJ0
        /yFv6G5chKtr9N8pVlG4FQXTHxa0L2sAtKU8NuH8=
X-Received: by 2002:a17:906:b288:b0:6da:825e:a2ee with SMTP id q8-20020a170906b28800b006da825ea2eemr23434509ejz.254.1647368789018;
        Tue, 15 Mar 2022 11:26:29 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJz7LxDT4MGNn2j5zGW0un4xcdJmoSwgEnvj4oTYvh7dGyCaYWm2rZ7O73KACh19pmoqcC1v1g==
X-Received: by 2002:a17:906:b288:b0:6da:825e:a2ee with SMTP id q8-20020a170906b28800b006da825ea2eemr23434496ejz.254.1647368788821;
        Tue, 15 Mar 2022 11:26:28 -0700 (PDT)
Received: from [10.227.148.193] (80-254-69-65.dynamic.monzoon.net. [80.254.69.65])
        by smtp.googlemail.com with ESMTPSA id q5-20020aa7cc05000000b004129baa5a94sm9780644edt.64.2022.03.15.11.26.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Mar 2022 11:26:28 -0700 (PDT)
Message-ID: <09e8fdab-978b-fa9d-9e45-f8625ebc9c52@canonical.com>
Date:   Tue, 15 Mar 2022 19:26:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH] dt-bindings: timer: Convert rda,8810pl-timer to YAML
Content-Language: en-US
To:     Stanislav Jakubek <stano.jakubek@gmail.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-unisoc@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220225173734.GA7573@standask-GA-A55M-S2HP>
 <20220315140140.GA2558@standask-GA-A55M-S2HP>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220315140140.GA2558@standask-GA-A55M-S2HP>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.9 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15/03/2022 15:01, Stanislav Jakubek wrote:
> Hi all,
> 
> anything holding this back? It's been sitting on the mailing lists
> with 2 R-B's for ~2 weeks.

Maybe it's too late in the cycle for Daniel to take this?

Daniel,

If you are waiting for Rob's ack, mine should be sufficient.


Best regards,
Krzysztof
