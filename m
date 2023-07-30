Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1DBD67686D4
	for <lists+devicetree@lfdr.de>; Sun, 30 Jul 2023 19:47:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229527AbjG3RrQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 30 Jul 2023 13:47:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49436 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229591AbjG3RrP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 30 Jul 2023 13:47:15 -0400
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A301310CA
        for <devicetree@vger.kernel.org>; Sun, 30 Jul 2023 10:47:14 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-99c0290f0a8so159231066b.1
        for <devicetree@vger.kernel.org>; Sun, 30 Jul 2023 10:47:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690739233; x=1691344033;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=IrOgs61XoD6nvvo7RE9vpo1zP/qDlQlSvbRMk98MHmE=;
        b=lLAQYQmQybExgDwErsMMs2tiRFkJcqSBK4ZUfoDM5/qlY9wW8yMHznQs/eWuXnm+uU
         dr0ZyedzRJuD5XXTWxjcGy1Pqvk3doIB4JqYfwtTZsfoNjwjRSWGbSMQEtZOZ7jcC04S
         lp+JtVR5p3r83Sp65/kBfe9D6Kf5UNi5EGEG8i6uTPlEj/pk9uH+dRLBFAM6DASb28DO
         ZUNWo9WofF+Os1cfsFTL0/O/QFHoL7kq0vGY6d/i4RWdM3eAZwcBf4j+VTF1N1f6N5Fz
         LQKjm9JQdjHpsGdyxVMCiweuHuBuH65EoVgNlipbxx3GHXl3265JwVou/e0Sn+WhOJV4
         Byeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690739233; x=1691344033;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IrOgs61XoD6nvvo7RE9vpo1zP/qDlQlSvbRMk98MHmE=;
        b=GE2bDygIiOzn4K5/E1ieggvwrU2t5u2pm2gKOhEaIuWINF3+4nwJVi8Vu/RKMjsnx9
         TI6W+kpll3HAso9MLR6UMmwFUFF+tA6Pmf78JUvaZZd3iri8T8L8VuOL9aCegAxR/M6K
         DZ7+YVfFah8Bq2fnfpJqkmB3ZQ29dPA6BeQDDCXQTtbpA+kjkBRRejdIP9QmvXrZYrHZ
         PLX5o1XaAwPVuH9cdfVzCWgNX1JtwxYvjQ+lDxQ3OZdse6aMRteQ5JkxqNRL/h5MYjCD
         wyj5DSKHS7lPJvcAn5gbuwv/pvYMDClAyvWxbxZargN99GwO7ScgYF0LYN+00BaWQzzk
         ZIBg==
X-Gm-Message-State: ABy/qLZSlm/zu4b9v6XFOO41RLzpiXupZ6cnjDLKBi4C2PKp58xsSlkL
        jQv7VYpHMx4Yfi1c9ji3WYVC4Q==
X-Google-Smtp-Source: APBJJlEBjOqJner1DTxmBIEUGCo5UvcdSUdWwZw493BQF113hSPsa5smAwjJGJIIU8/Tu7yNtMOmmw==
X-Received: by 2002:a17:906:18:b0:982:7505:fafa with SMTP id 24-20020a170906001800b009827505fafamr4312331eja.47.1690739233011;
        Sun, 30 Jul 2023 10:47:13 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.222.183])
        by smtp.gmail.com with ESMTPSA id g2-20020a1709064e4200b00992025654c1sm4985351ejw.179.2023.07.30.10.47.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 30 Jul 2023 10:47:12 -0700 (PDT)
Message-ID: <69ed96c2-17d8-7362-cf61-93e895e22ff3@linaro.org>
Date:   Sun, 30 Jul 2023 19:47:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: Re: [PATCH 1/8] AMR: dts: imx6sx-nitrogen6sx: drop incorrect
 regulator clock-names
Content-Language: en-US
To:     Shawn Guo <shawnguo@kernel.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com
References: <20230726070322.103871-1-krzysztof.kozlowski@linaro.org>
 <20230730134446.GV151430@dragon>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230730134446.GV151430@dragon>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 30/07/2023 15:44, Shawn Guo wrote:
> On Wed, Jul 26, 2023 at 09:03:15AM +0200, Krzysztof Kozlowski wrote:
>> regulator-fixed does not take "clock-names" property:
>>
>>   imx6sx-nitrogen6sx.dtb: regulator-wlan: Unevaluated properties are not allowed ('clock-names' was unexpected)
>>
>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> Fixed the typo of 'AMR' in subject of 1/8 ~ 4/8 (Thanks Fabio!), and
> applied all, thanks!

Oh! Thank you for fixing the subject.

Best regards,
Krzysztof

