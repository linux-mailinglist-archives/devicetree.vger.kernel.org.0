Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C33B44B8A32
	for <lists+devicetree@lfdr.de>; Wed, 16 Feb 2022 14:34:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234258AbiBPNeS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Feb 2022 08:34:18 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:54698 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230237AbiBPNeS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Feb 2022 08:34:18 -0500
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6C78D27993E
        for <devicetree@vger.kernel.org>; Wed, 16 Feb 2022 05:34:06 -0800 (PST)
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com [209.85.208.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 44A3240333
        for <devicetree@vger.kernel.org>; Wed, 16 Feb 2022 13:34:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1645018445;
        bh=Ygk0oL7HIcrzS+8p6jaC/5jMGWlNHppcf10IvWdE7Zg=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=HQRINk06XwFEEi8sQs8Hk0nAbcyoujWW3V0Gy0cgaDivUMHIlFHMlzZerB3J0UO0A
         y9OqqKGWK0PgkCeLXAI0lcQqew+bEGAmZsjoqg607ZjvxbxvniNHum2gJD5jqMkTEW
         i3IOFJT3BVPRrCDWn3gr46LEvwsw5kBYg+h0qCsqOasZHZ7yZ9mD4U3OUlMyuEy3BD
         ucDecV44jOigCdp7eeg7eRPlgPElMPmwqXu81LoKnh8dLHfVk2lAO7/wDj4ShN8UYy
         aEBawgTG5kNsPeHULDawKHXzymdnUqZQAAHOv68taKtRqIszRGpw6H1jYDjMLE1RAh
         uS319Xqvd5FLg==
Received: by mail-ed1-f70.google.com with SMTP id l14-20020aa7cace000000b003f7f8e1cbbdso1534330edt.20
        for <devicetree@vger.kernel.org>; Wed, 16 Feb 2022 05:34:05 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=Ygk0oL7HIcrzS+8p6jaC/5jMGWlNHppcf10IvWdE7Zg=;
        b=1ddbZdoFR40Ymx6CPCWMsbzPgc0LoEJJZGGCqPHooM+/DKEHKo/RB/QW+SBcJDt0zJ
         xCPMMREkStKjE1xhpSkSAvi4bI+dO+MZt6Qc0hNgnRnDeqVah7jDDT/qQmXPdGiBkbau
         7ojPpwRUctF590e6THGomJm071xBx2O9tDk01LvFOKJer0ZkeGII0qZYOgONdwz/Bywe
         OksuxBhdCS07r6JxkMq+vyIffN/BRuDwjHDleFt7S3sH2NIndqHBkpYvwpaIH/VKOzGu
         dLOMJXh/XeJJRVpp5+/3IGBaxBMHK/PMlBpFwRy0yqwWpyZMytbyp+fZBVRt5OrGlMSs
         jOJQ==
X-Gm-Message-State: AOAM533jc97f6A24ut+t0+xk2rl6b9tuOqRInSyeUcUuAbru6ro2PcfV
        wJIHjpd9pqAQLmf9Uu0q+OZQedBhZlKA5nWnzf1x2as+TAIbdWD1mgoVEsTi7/Daw8CBPWph5z/
        YCZxCxBzVbqkjJ+eepBlpd3bGgsbTbO8Qu0KObEE=
X-Received: by 2002:a05:6402:4309:b0:410:db71:b5ce with SMTP id m9-20020a056402430900b00410db71b5cemr3090482edc.432.1645018444074;
        Wed, 16 Feb 2022 05:34:04 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxVYtlgvJHmzgWnalCu7oOyb2pqeUD/VP330LFsfZBhFtaHPLfpzcUVdKdFaWSHSRdTEM50CQ==
X-Received: by 2002:a05:6402:4309:b0:410:db71:b5ce with SMTP id m9-20020a056402430900b00410db71b5cemr3090471edc.432.1645018443928;
        Wed, 16 Feb 2022 05:34:03 -0800 (PST)
Received: from [192.168.0.110] (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id r17sm1709384edd.64.2022.02.16.05.34.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Feb 2022 05:34:03 -0800 (PST)
Message-ID: <e6ddc2fb-7753-ae89-e9fd-f2b9efd91881@canonical.com>
Date:   Wed, 16 Feb 2022 14:34:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH] dt-bindings: firmware: arm,scpi: Add missing maxItems to
 shmem property
Content-Language: en-US
To:     Geert Uytterhoeven <geert+renesas@glider.be>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Cristian Marussi <cristian.marussi@arm.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
References: <f6d1ea27e8b8dc47fbe849661cc5a843bc2f1ba5.1645017656.git.geert+renesas@glider.be>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <f6d1ea27e8b8dc47fbe849661cc5a843bc2f1ba5.1645017656.git.geert+renesas@glider.be>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/02/2022 14:21, Geert Uytterhoeven wrote:
> "make dt_binding_check":
> 
>     Documentation/devicetree/bindings/firmware/arm,scpi.example.dt.yaml: scpi: shmem: [[2], [1]] is too long
> 
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> ---
> Exposed by commit 39bd2b6a3783b899 ("dt-bindings: Improve phandle-array
> schemas").
> ---
>  Documentation/devicetree/bindings/firmware/arm,scpi.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/firmware/arm,scpi.yaml b/Documentation/devicetree/bindings/firmware/arm,scpi.yaml
> index 800417a76bda0bd9..3735f221fdf24e0a 100644
> --- a/Documentation/devicetree/bindings/firmware/arm,scpi.yaml
> +++ b/Documentation/devicetree/bindings/firmware/arm,scpi.yaml
> @@ -51,6 +51,7 @@ properties:
>        be any memory reserved for the purpose of this communication between the
>        processors.
>      minItems: 1
> +    maxItems: 2

The same should be done to "mboxes" (I mean 39bd2b6a3783b899 and what
you are doing here) and the maxItems should match both, shouldn't it?


Best regards,
Krzysztof
