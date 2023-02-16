Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0226469920A
	for <lists+devicetree@lfdr.de>; Thu, 16 Feb 2023 11:45:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229898AbjBPKph (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Feb 2023 05:45:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33322 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229695AbjBPKpd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Feb 2023 05:45:33 -0500
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8236618B
        for <devicetree@vger.kernel.org>; Thu, 16 Feb 2023 02:45:09 -0800 (PST)
Received: by mail-ej1-x633.google.com with SMTP id mc25so4003340ejb.13
        for <devicetree@vger.kernel.org>; Thu, 16 Feb 2023 02:45:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dWRGLpMx6Jw6kgCfoGLxxyUHKgMJC80WL99LK9JAUAk=;
        b=kvV7SFSbl1c5iBPBB7UR+FRc7dPdIqRFPVFEB6rUH+VsUCJT8Vi3mdUabdQEvu8kup
         6BUWl6shkrY3j5euLBp0HuePan+ZUCqz/R+G7m3m0nl5cL7Dmxi5FR1CYTWHKOMhXBz8
         sX6eD4hBX18FLmAaBkF8NI7EA4ku5BWu56DBkNiqp0njXbZTTHRoWmySb3OgjqMFIBxL
         wH7nViWRZrUgNhg288oQbCSUg5nuH56MrhOxhJ+6BtK13XUrcsMo2d2k31RDh4eHQEst
         ZqTZcQGx2HXCkTNlU4FLp5zBoUTsvWvpmVvCoLE3Ewqx2q8h3aQoUVI0OKZtKe448ti5
         sqBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dWRGLpMx6Jw6kgCfoGLxxyUHKgMJC80WL99LK9JAUAk=;
        b=ddwNYPRp4vlIc04lO3lsMm3MeEcXyxWE5lTlGKpqpYTUYTEvPl7iVnlPRQwm9s9Q+B
         fH95eWai1tbEqVviMwEEn/XuMA4JIpYAWYB1Hia1Y/suVQGyHecqE9/I8H2bVut6WrZ2
         BWVT7kyCukR8tdFROzeF/NCcrXBdi6cIajo7mOxEUkf0mmjf7liSbOIby1uepls0PHDr
         qtRDCqs8EYOUbGtEAnqV/f1BwMP2g5rj3aL5JRwRc5Tl2OR1kpi3orYPwb7yGArrl2QS
         +yjx2eIuP6KCeBbQTFRlfOMC5WJyiIqWXxbvOV0zyxluzXl3/sd4B6NDy6oAHTqWPYdh
         nilg==
X-Gm-Message-State: AO0yUKWKzZYVcAeodaPL5mgzkAQicYJj1e2xvuchB7W8fPfGRo0S0mda
        6Qskps4+APiscMxMvgixTPSCrA==
X-Google-Smtp-Source: AK7set/fWFrsz2FXgW2F6Xxe3eCWZp7wyxiGLl60ovhkDEf1eHvQmkkRehG+N8odIEyZ9+teUFcfKA==
X-Received: by 2002:a17:907:9627:b0:870:3c70:8c8d with SMTP id gb39-20020a170907962700b008703c708c8dmr8906855ejc.17.1676544307979;
        Thu, 16 Feb 2023 02:45:07 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id gh5-20020a170906e08500b008b1313009cdsm639711ejb.179.2023.02.16.02.45.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Feb 2023 02:45:07 -0800 (PST)
Message-ID: <2fecab8a-26ae-c62d-bf47-7319e11bbe51@linaro.org>
Date:   Thu, 16 Feb 2023 11:45:05 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH 1/2] dt-bindings: regulator: Add bindings for Richtek
 RT5739
Content-Language: en-US
To:     ChiYuan Huang <cy_huang@richtek.com>
Cc:     broonie@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, lgirdwood@gmail.com,
        u0084500@gmail.com, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
References: <1676426457-1389-1-git-send-email-cy_huang@richtek.com>
 <1676426457-1389-2-git-send-email-cy_huang@richtek.com>
 <9c1f4d0e-83c9-014e-bdb1-38b4b0fb2bbf@linaro.org>
 <20230216095714.GA14578@linuxcarl2.richtek.com>
 <38824a96-804d-84a2-2750-be1325b2e1d2@linaro.org>
 <20230216103530.GA17387@linuxcarl2.richtek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230216103530.GA17387@linuxcarl2.richtek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/02/2023 11:35, ChiYuan Huang wrote:

> https://elixir.bootlin.com/linux/v6.2-rc8/source/drivers/regulator/of_regulator.c#L198
> It seems no need to limit the maxItems. Regulator core will call 'of_map_mode' to check the value.
> Even the value is repeat.
> 
> And for minItems, 'regulator.yaml' already said it's uint32-array. Must be lager than zero, right?
> 
> So how about just keep 'items' and remove the 'maxItems'?

Yeah, go ahead, with that enum, it should be correct..

Best regards,
Krzysztof

