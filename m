Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CB85376182F
	for <lists+devicetree@lfdr.de>; Tue, 25 Jul 2023 14:24:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233423AbjGYMYk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 Jul 2023 08:24:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48054 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233410AbjGYMYj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 25 Jul 2023 08:24:39 -0400
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0A2F1173B
        for <devicetree@vger.kernel.org>; Tue, 25 Jul 2023 05:24:37 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-4fb77f21c63so8501860e87.2
        for <devicetree@vger.kernel.org>; Tue, 25 Jul 2023 05:24:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690287876; x=1690892676;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ks3nUOn/9qR1jrhxbqY2QCJrSfWExHFhLwuG1z7B3TE=;
        b=oG/p44haSlMMr+HRlqE79VaQqZhwEwmSo8ZjOOxune3yqh629GMwSMWSfjhBRB6e1N
         Ty+ROSaV6OoS+5cfAdwcbR95051XyeG62lmnXUG5w3qZ+zOQtg5qQjfL+4WJDxj78FFu
         OFMo5tqWAXhiRMT6YtLLFlxatsASqPfnU0ENTThzCY6Wm9Ojz4JrWgVquG0QToNSLubx
         121/JSosd5nylMRCQ8nabStMWVBxe4A8MnsaqCqMH5g+9cQJ3S9SQ71cnWg/XON5GSny
         MIphdr8uB18GYn4a7e85ZU/DHzuPYZ/d+rNC/Xlmh/E7Z11Vls1o6jQny4kJnAcuS+/Q
         jXqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690287876; x=1690892676;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ks3nUOn/9qR1jrhxbqY2QCJrSfWExHFhLwuG1z7B3TE=;
        b=d8+l9W6Nuxfar6VoAV2TJcL868jX2RL9syKE0XDhazep4qenGYZ7XBW/ZQqSmfY8cZ
         fMiLyPANHs26+Z0V2e/8OGRBkhIBPW0oOYk9YHdrE23p/W2Oje0kvrtouyTRaZBJ+Xba
         KQmP+xCvzu3CfWwjCus4nzkaRsp7g1QRi3zHn38G2NKwjNq2pT+M576Ja5OtvEi8YLrP
         YpCtvRkfEW0pvj5FbPJGvHyAWtO6KW+bwm8oQ1fN7kK5ScevKl6fd1rZ1lIDDCFqsClP
         hiR0/XK3nm5+RbwMMYn5zVJpjOIZhbCNVcOLx4Lhh1hA8sDJgw4aLoxxZEG1OSO5aVjm
         yUhQ==
X-Gm-Message-State: ABy/qLa25f1YRheercZ2VHgsFJhPIVLWWqqcKZfAfj7c3sgH/7Yvhmz/
        Sf2upGm1tZooSiXA8sLUuVrkfg==
X-Google-Smtp-Source: APBJJlGqYyD2TAEiCN22VeSTnnKHBifqwY0pQj3pRX2YJUU6lNpsvdxSXZzil9Y7DBLk3s87zMs/hw==
X-Received: by 2002:ac2:5e2c:0:b0:4fb:92a9:cbe8 with SMTP id o12-20020ac25e2c000000b004fb92a9cbe8mr6559105lfg.18.1690287875901;
        Tue, 25 Jul 2023 05:24:35 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id j11-20020aa7c0cb000000b00522274c3775sm3771264edp.68.2023.07.25.05.24.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Jul 2023 05:24:35 -0700 (PDT)
Message-ID: <c6e8c950-9d1f-099a-b48a-2b838ed04ac7@linaro.org>
Date:   Tue, 25 Jul 2023 14:24:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH V2 1/4] ASoC: codecs: Add code for bin parsing compatible
 with aw88261
Content-Language: en-US
To:     wangweidong.a@awinic.com, lgirdwood@gmail.com, broonie@kernel.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, perex@perex.cz, tiwai@suse.com,
        rf@opensource.cirrus.com, shumingf@realtek.com,
        povik+lin@cutebit.org, 13916275206@139.com,
        herve.codina@bootlin.com, ryans.lee@analog.com,
        ckeepax@opensource.cirrus.com,
        ajye_huang@compal.corp-partner.google.com,
        sebastian.reichel@collabora.com, yijiangtao@awinic.com,
        trix@redhat.com, colin.i.king@gmail.com, liweilei@awinic.com,
        alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     zhangjianming@awinic.com
References: <20230725115649.67560-1-wangweidong.a@awinic.com>
 <20230725115649.67560-2-wangweidong.a@awinic.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230725115649.67560-2-wangweidong.a@awinic.com>
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

On 25/07/2023 13:56, wangweidong.a@awinic.com wrote:
> From: Weidong Wang <wangweidong.a@awinic.com>
> 
> Add the awinic,aw88261 property to the awinic,aw88395.yaml file
> Add aw88395_lib.c file compatible with aw88261 bin file parsing code
> 
> Signed-off-by: Weidong Wang <wangweidong.a@awinic.com>
> ---
>  .../bindings/sound/awinic,aw88395.yaml        |   4 +-
>  sound/soc/codecs/aw88395/aw88395_lib.c        | 194 ++++++++++++++++--
>  sound/soc/codecs/aw88395/aw88395_reg.h        |   1 +
>  3 files changed, 181 insertions(+), 18 deletions(-)

Bindings are always separate patches.

Please run scripts/checkpatch.pl and fix reported warnings. Some
warnings can be ignored, but the code here looks like it needs a fix.
Feel free to get in touch if the warning is not clear.

Best regards,
Krzysztof

