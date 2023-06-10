Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6DADD72AD64
	for <lists+devicetree@lfdr.de>; Sat, 10 Jun 2023 18:38:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229636AbjFJQiO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 10 Jun 2023 12:38:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48232 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229598AbjFJQiO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 10 Jun 2023 12:38:14 -0400
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7748A3588
        for <devicetree@vger.kernel.org>; Sat, 10 Jun 2023 09:38:12 -0700 (PDT)
Received: by mail-ed1-x532.google.com with SMTP id 4fb4d7f45d1cf-51494659d49so4910602a12.3
        for <devicetree@vger.kernel.org>; Sat, 10 Jun 2023 09:38:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686415091; x=1689007091;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Hp33yA5HcmdHo6uDlO7P+JfSf1kHY2kxoEjyxwdelr4=;
        b=qpWBaIqFetal+BReZfUxUTyc6Jao3DQNWqNlxdw8JnRTnxNxho/XZvNQz6kE83BBO0
         9AESFhLOtsmkcdaO7cEDKhjp9Euc9dxTmfFl+TDXNt28M4cbF48nxbDmz1V1HRp+KoDZ
         HhU+EAzkqemptHxjze8XJi1TttEK+Gbrn2iRET14U+/o7BYIr/7ycjj4VhaPc63q52ZE
         NDxzsSxac9XDEoVRh9Rrbd4b+b32RV2vVlFsI0z0+nzoP8+w+cHXQ2vUdz/jK7MO6xmH
         2aP2X/06q+4APRPW1I4Ghzrjd9gMWPAwT/t410ZJIMRoflwn8M6B8+OQ4auePe3ImtRH
         +MKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686415091; x=1689007091;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Hp33yA5HcmdHo6uDlO7P+JfSf1kHY2kxoEjyxwdelr4=;
        b=QUlt3PJbfAhKgOnVfzPZOqEf7RwvJrzb7P2pxuGqWtumY5lpbFcvn95LAQxvol7klI
         4nheT20Vt6xm6wgzNkGMxChTRekw2dnh0P4trJ1gqVCv/cEEmT5+E0BbgrdKbVwEBIzU
         t+dkfqivFtyhFruEzsvSRMCuJ6BaWyP37jYOUBjR31Rejut9dfwiZtaiGSQMNSna2oJm
         fcYglGmLEQm1SdL0q33xz6LG7IP6kQYP4cLgLKj1ynnczjWnPpf1JcL2gU83mfVt/r86
         ACKnqmYM7iIAtP6XEZb6cy9ekcEu/BuVQg4HB+ZIHVF1hH2nSVG5f1zczk1n2KITjviy
         CZcg==
X-Gm-Message-State: AC+VfDzXrslaQsKRQF7gcYiMs2KahDQvpSAonHCemxcaabn0oBY7wZpI
        N6w//QU32DBo+ls9pW2ygqzyKA==
X-Google-Smtp-Source: ACHHUZ5WhgtdYTW5eL6c7P8syI3GQHp0HZckc2U6paAq8Szm4VAUQjVE2jDkIGK6LbHNiZyOsXRPdw==
X-Received: by 2002:a05:6402:690:b0:505:4f7:8a50 with SMTP id f16-20020a056402069000b0050504f78a50mr1600989edy.5.1686415090961;
        Sat, 10 Jun 2023 09:38:10 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id i9-20020aa7dd09000000b005163054e330sm2968446edv.87.2023.06.10.09.38.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 10 Jun 2023 09:38:10 -0700 (PDT)
Message-ID: <b18908cd-fe52-8f2d-2882-503460909936@linaro.org>
Date:   Sat, 10 Jun 2023 18:38:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Subject: Re: [PATCH 06/18] dt-bindings: clk: gxbb-clkc: expose all clock ids
Content-Language: en-US
To:     Neil Armstrong <neil.armstrong@linaro.org>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     linux-amlogic@lists.infradead.org, linux-clk@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20230607-topic-amlogic-upstream-clkid-public-migration-v1-0-9676afa6b22c@linaro.org>
 <20230607-topic-amlogic-upstream-clkid-public-migration-v1-6-9676afa6b22c@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230607-topic-amlogic-upstream-clkid-public-migration-v1-6-9676afa6b22c@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/06/2023 12:56, Neil Armstrong wrote:
> Due to a policy change in clock ID bindings handling, expose
> all the "private" clock IDs to the public clock dt-bindings
> to move out of the previous maintenance scheme.
> 
> This refers to a discussion at [1] & [2] with Krzysztof about
> the issue with the current maintenance.
> 
> It was decided to move every gxbb-clkc ID to the public clock
> dt-bindings headers to be merged in a single tree so we
> can safely add new clocks without having merge issues.
> 
> [1] https://lore.kernel.org/all/c088e01c-0714-82be-8347-6140daf56640@linaro.org/
> [2] https://lore.kernel.org/all/2fabe721-7434-43e7-bae5-088a42ba128d@app.fastmail.com/
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

