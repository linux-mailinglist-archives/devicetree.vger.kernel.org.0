Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5ED39572FD7
	for <lists+devicetree@lfdr.de>; Wed, 13 Jul 2022 09:58:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234963AbiGMH6a (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Jul 2022 03:58:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56402 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234914AbiGMH63 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Jul 2022 03:58:29 -0400
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 71E6EE7ACB
        for <devicetree@vger.kernel.org>; Wed, 13 Jul 2022 00:58:28 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id d12so17752035lfq.12
        for <devicetree@vger.kernel.org>; Wed, 13 Jul 2022 00:58:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=rq1o28qxJyZcI90zoJpXwu74Pj76PJ2bQ9VI9gVIlf4=;
        b=XWaUVoWuXAJFmvfGSdO7PMUZsh5BaOqlMeJztnm3q0aJW2ZhY3Dx9jC8F+26HjVApM
         3O1KY1yuoQWGB672Pp42Y2517T/WhcvvSdsB3pTNFbBLIP6/BxxjzIjfzIrM0S2Hp6Q6
         hm3pEhImXSOpQ5xm9sS7qHSFltriDYR7P1sp6AhDoqs97UZYvQf/FUZBBYow0U2si6y5
         mvYKlS/18p1eOSP3ffTJUc9AH/zJJwb3xTq+/dznQp373PsS0IvxRv4nbhaHIP4GEYjm
         U02AAExslgp2BErYvb0qXZKa2FgBTAg4/3uXXzNwHtX5mX6X4Bd/1S6GI9PKDwqRNblY
         IVew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=rq1o28qxJyZcI90zoJpXwu74Pj76PJ2bQ9VI9gVIlf4=;
        b=yAivd8Ng6g4tO+9j80sgIMq8IqvJgX3UkpIWOEx5Z4s6YTBPU9BWnrx8lKfTQ3hcol
         aOWPBhO2GqjqSlTmEj8ue3Q8Oi91KBcpBqLbXp07Q2SdxRARuSOnKc5XYqcR7GvwpB3H
         YLeIumRZwZicxk/RPR0w0AwGX2erGcP26rAiioNok5JPdC9hvPXtl1VZQIW+5YAdEWiN
         L5uUT3KlQyli9N8myRkxwI+ubOoVXvOqJiizF33XUQnYbO51rX3cei9aX6INzJ+b2pLs
         +SZl41+dwbt4ooV/tnWDjOp47YTunO7dNKwya6vez9XCeWJM4GxaiPOuIdOkinLt1mHr
         GnJg==
X-Gm-Message-State: AJIora/gh2eSh7UO0bl/rdPr56JCl+/5ejjXRsKyPNoIxgu3MWiwz7p4
        Z3XTwJYURAScj8I5uLdnHzuSpw==
X-Google-Smtp-Source: AGRyM1undO3KB+PstkyxNyjlnzgnT5GPZ39FhG7yap0AtX8YKpRcMsUwtFRgQYbn4az+YD0Wnpo1Hw==
X-Received: by 2002:a05:6512:ea1:b0:489:2930:9f1a with SMTP id bi33-20020a0565120ea100b0048929309f1amr1272396lfb.291.1657699106732;
        Wed, 13 Jul 2022 00:58:26 -0700 (PDT)
Received: from [10.0.0.8] (fwa5da9-171.bb.online.no. [88.93.169.171])
        by smtp.gmail.com with ESMTPSA id v8-20020a056512048800b00489c59819f0sm2639998lfq.282.2022.07.13.00.58.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Jul 2022 00:58:26 -0700 (PDT)
Message-ID: <49fedd88-9a63-f9ed-0e92-837ac6e7e763@linaro.org>
Date:   Wed, 13 Jul 2022 09:58:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 1/3] dt-bindings: usb: Add binding for TI USB8041 hub
 controller
Content-Language: en-US
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        linux-usb@vger.kernel.org, devicetree@vger.kernel.org
References: <20220712150627.1444761-1-alexander.stein@ew.tq-group.com>
 <7c838790-1dd9-732a-e5cb-f2ea6454411a@linaro.org>
 <8966410.CDJkKcVGEf@steina-w>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <8966410.CDJkKcVGEf@steina-w>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 13/07/2022 09:20, Alexander Stein wrote:
> Yes, 'make dt_binding_check' does not raise any error about this binding.

Yes, I know. reset-gpio is still accepted, but the preferred (and
documented) naming for all GPIO properties is always "-gpios", even for
one-GPIO properties.

Best regards,
Krzysztof
