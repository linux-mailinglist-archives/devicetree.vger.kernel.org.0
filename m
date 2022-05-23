Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 10BFB530B68
	for <lists+devicetree@lfdr.de>; Mon, 23 May 2022 11:03:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232496AbiEWJCq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 May 2022 05:02:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33816 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232475AbiEWJCn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 May 2022 05:02:43 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 77BEE443EB
        for <devicetree@vger.kernel.org>; Mon, 23 May 2022 02:02:33 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id c19so11319665lfv.5
        for <devicetree@vger.kernel.org>; Mon, 23 May 2022 02:02:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=ljrd9sPBtTP1ZdWylTJaxJQwiOMaV0RsKrtAyaEmj6o=;
        b=oPo1j2LuxzDgj4/FwOQTvNFJEyd8mtHUO5SNwyed0GjfWwnSFSahZtmWm27dBxhpV7
         OUuZMM74v3Iu4c8qxX6bRAyM1pmNQZDVuMiPWUliFBtd1danjEXNTSJK9ZZjMq3JFdKl
         /xIZjkiXDq4vR7gMZ/phwo2h6T+tstPUtolYQsb8QLyZLHZmGX0DxqHxcgx5H59mSIMk
         yArrzKf+VdC/sdz/pT7rSv7nxtLugtrakwl/sBQKrA5cv8OlucO0/0/9ZZybtQCJDwjy
         8X+Xj/mkPiu956hNgl3IxgRrJB3iLz2wrzVyJt2e12uBBJNEPAXu5uNtxGRdAfeK5q73
         BnJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=ljrd9sPBtTP1ZdWylTJaxJQwiOMaV0RsKrtAyaEmj6o=;
        b=LMdDXyEstnT8DK6xlnF3GKCFmGL2lTUsD2tLT0ZMdr03JKxNhm7f9wroEiTDPHtHlL
         xi8NHDKlXwKPAzMeAEbk6tbAE5K0edL0F7piDktXlPIsChNwhTMjC27rYGNzO3sXCA8j
         TQGbgu+L6IsKBHmXjbCQjZRpPGbjn7hvx1aYaG162EG4cFunO+JyGBK7zjvcOxvPf30t
         3IwQDfMcdQYnt4NcJTobkaYUsT2ieT9Ny8eRuPmuHIkM7yPRsDzh6aY6L1gATu+T/jH4
         Te94Xd3YmEO/chz/Kee/4PZgkBDr1ZOueXZ8x2EjszRqNv5H6wCnrU+NpLJQc9pEZxWR
         EDLA==
X-Gm-Message-State: AOAM53257YQjoLrs/ashg3zeMYU3IUULUIUiB/zXERd3hJAxJ9GUq3fA
        RKVAKLXne4r4tygFfaxkJpWW0w==
X-Google-Smtp-Source: ABdhPJzbcDpp9WdQRGctTvhF6D+POWonEUZcsEGe0VlBk37PKo9kF6CLPhJMhMaxrrwRceOwCzgcUg==
X-Received: by 2002:a05:6512:118b:b0:46b:a9ae:3a3b with SMTP id g11-20020a056512118b00b0046ba9ae3a3bmr15876556lfr.188.1653296551721;
        Mon, 23 May 2022 02:02:31 -0700 (PDT)
Received: from [192.168.0.17] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id p26-20020a2e9a9a000000b00250a7bce0fdsm1704036lji.95.2022.05.23.02.02.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 May 2022 02:02:31 -0700 (PDT)
Message-ID: <927d0508-d83a-9ab5-8719-721f2c769bee@linaro.org>
Date:   Mon, 23 May 2022 11:02:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH v1 15/19] dt-bindings: arm: npcm: Add nuvoton,npcm845 GCR
 compatible string
Content-Language: en-US
To:     Tomer Maimon <tmaimon77@gmail.com>, avifishman70@gmail.com,
        tali.perry1@gmail.com, joel@jms.id.au, venture@google.com,
        yuenn@google.com, benjaminfair@google.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, mturquette@baylibre.com,
        sboyd@kernel.org, p.zabel@pengutronix.de,
        gregkh@linuxfoundation.org, daniel.lezcano@linaro.org,
        tglx@linutronix.de, wim@linux-watchdog.org, linux@roeck-us.net,
        catalin.marinas@arm.com, will@kernel.org, arnd@arndb.de,
        olof@lixom.net, jirislaby@kernel.org, shawnguo@kernel.org,
        bjorn.andersson@linaro.org, geert+renesas@glider.be,
        marcel.ziswiler@toradex.com, vkoul@kernel.org,
        biju.das.jz@bp.renesas.com, nobuhiro1.iwamatsu@toshiba.co.jp,
        robert.hancock@calian.com, j.neuschaefer@gmx.net, lkundrak@v3.sk
Cc:     soc@kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-serial@vger.kernel.org, linux-watchdog@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
References: <20220522155046.260146-1-tmaimon77@gmail.com>
 <20220522155046.260146-16-tmaimon77@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220522155046.260146-16-tmaimon77@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22/05/2022 17:50, Tomer Maimon wrote:
> Add a compatible string for Nuvoton BMC NPCM845
> global control registers (GCR).
> 


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
