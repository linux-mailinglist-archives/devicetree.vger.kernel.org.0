Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 05B816CB85C
	for <lists+devicetree@lfdr.de>; Tue, 28 Mar 2023 09:41:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230280AbjC1Hlz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Mar 2023 03:41:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56444 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229811AbjC1Hly (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Mar 2023 03:41:54 -0400
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9931510F8
        for <devicetree@vger.kernel.org>; Tue, 28 Mar 2023 00:41:53 -0700 (PDT)
Received: by mail-ed1-x535.google.com with SMTP id h8so45838060ede.8
        for <devicetree@vger.kernel.org>; Tue, 28 Mar 2023 00:41:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679989312;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=B9ufKZwxlw52D87XJPI1kMvE4zVDD0Zw+DmPa/M3l4I=;
        b=n3D+VFn8KT+Z+WIdreipgrOuNp9hqIqGj86749q40xAnsceYzojpBCiefiv/MIR3AJ
         3YNg62QVt+4ZsdMbtJnbYsmhNWRawGvuJH3re+MNp2q4gQBR7VPotlIWsUS5fReWjdU1
         4CLrrrwYwukZltHPIzUE92V6dxkIzFU2Sh2GHy+1KWVAPgD7/Xh3MJt/CPFS78SHEBui
         VbavTBqNknYIDkXVYJFT4n39cfhe/BANZwJypNGWFXrj/PxbPC7DkEEjXAy3TPYzvZtF
         RuId8ppxDdFDnMV/8xNiWtgIWsJkVpChyFpYSnYbZ53rrrp0bwrxGJhPC0OatH1Z0WzN
         3pFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679989312;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=B9ufKZwxlw52D87XJPI1kMvE4zVDD0Zw+DmPa/M3l4I=;
        b=SgHpkjxJRcKXfQwpxz3eFm913LHZJfyii+X8Vkw7aT8WeBQ3WqXn01AqdUrWOiMW8y
         k0dsG/a5AhHeM/U3yOXXPeESAnbTTReGObBHlVh7e56ikc4k4X2OMzQPOvslWePeZ1zl
         jtanxSOFCETDka3vJzyOPPKTgC3+SGvjc6GhLjnTmmjAJdDAFjsw9L5sxig6XeFZJ/7B
         9bn3/x6Ftpuuu2gbiLkYxCH3HxmOdeUEWKXtG1MsknR28fSY4cCNlV8ERaLGdid5riFS
         9SE7NBfCiTHiQDCj5ACJVvown7boWyhhdV8C+pwMJajna2/LquwdqXUqtNTzObEHvjWQ
         m4vQ==
X-Gm-Message-State: AAQBX9dwc9uyhuj8f387t7tzgnD91ZxycwrEJX3Bsw+kPa5KHCn+5O7A
        MesNngNOVry6osUuqwWGEukq+w==
X-Google-Smtp-Source: AKy350aNpBP43XpYra0IPKGvGv8JB0eUb3lwNLn7r2yGQg9SzEVJlfP0qpN6OwQahnyS3Lmdb+K9EA==
X-Received: by 2002:a17:906:780c:b0:921:5e7b:1c27 with SMTP id u12-20020a170906780c00b009215e7b1c27mr15384488ejm.24.1679989312130;
        Tue, 28 Mar 2023 00:41:52 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:9e92:dca6:241d:71b6? ([2a02:810d:15c0:828:9e92:dca6:241d:71b6])
        by smtp.gmail.com with ESMTPSA id b1-20020a1709065e4100b008ca52f7fbcbsm14946887eju.1.2023.03.28.00.41.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Mar 2023 00:41:51 -0700 (PDT)
Message-ID: <0aea4e60-f835-3bb0-f082-b7b799f2ad95@linaro.org>
Date:   Tue, 28 Mar 2023 09:41:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v2 0/3] Add "mclk" support for maxim,max9867
Content-Language: en-US
To:     Richard Leitner <richard.leitner@linux.dev>,
        Mark Brown <broonie@kernel.org>
Cc:     Liam Girdwood <lgirdwood@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Ladislav Michl <ladis@linux-mips.org>,
        Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>,
        Benjamin Bara <benjamin.bara@skidata.com>,
        Benjamin Bara <bbara93@gmail.com>, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Richard Leitner <richard.leitner@skidata.com>
References: <20230302-max9867-v2-0-fd2036d5e825@skidata.com>
 <167810953075.75807.14829875612499629879.b4-ty@kernel.org>
 <20230328055916.GA11037@g0hl1n.net>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230328055916.GA11037@g0hl1n.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 28/03/2023 07:59, Richard Leitner wrote:
>> should be sent as incremental updates against current git, existing
>> patches will not be replaced.
> 
> As Krzysztof requested some changes on the clocks property dt-bindings
> patch (#2) commit message... How should I handle this?
> 
> The changes requested on the patch content (dts example) should be sent
> as incremental patch to the original series, I guess?

Incremental updates, so new patch. Rebase on maintainer's tree next
branch or linux-next (usually linux-next is the easiest but for
cross-tree patches might create inapplicable series).

Best regards,
Krzysztof

