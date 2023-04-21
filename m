Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3F9D76EB005
	for <lists+devicetree@lfdr.de>; Fri, 21 Apr 2023 19:03:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232932AbjDURCd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Apr 2023 13:02:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44334 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233015AbjDURC1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 Apr 2023 13:02:27 -0400
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com [IPv6:2a00:1450:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A92F115467
        for <devicetree@vger.kernel.org>; Fri, 21 Apr 2023 10:01:57 -0700 (PDT)
Received: by mail-ed1-x52b.google.com with SMTP id 4fb4d7f45d1cf-50685f1b6e0so3349458a12.0
        for <devicetree@vger.kernel.org>; Fri, 21 Apr 2023 10:01:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1682096489; x=1684688489;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Q5IrP6nJv/30opFVXoSmH56HbviMUJyPl8PflHFRUSs=;
        b=Pcx1wOVGUvDKJYeaYL0Os0ifTloJxfsdBvmuPqUHJrP22lXDOsEK5FCBcY8xPSSaRs
         gq6t/J1i1kev1Gm05Ca9cs75jZFoM54CH5r5SpkuFNDNJp9ZzyYG2PV+jpEEwejKETtK
         eJPDpEFKA6ARwjzLJZrupsX0NmrE3puBI4xkf0cBkURTX+khhrhRsG3VkgvLn4j2JPp+
         PbD5HEVLc3P//JLUOpNac+adCs4SLZaGJG7TzFo4CmZNkSyV/6VVnj3Ai9E54K6xcuvx
         hH8FNYBGy4Oi3d5WdqSba/mcQhr6xrbkZQx49pHgZCrh/7QA3v8ZqZO158L35TbHzLxF
         azpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682096489; x=1684688489;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Q5IrP6nJv/30opFVXoSmH56HbviMUJyPl8PflHFRUSs=;
        b=TtuHsciyEYkJHMW7vX95Vaji3Cr0WvIkq8oe5AOl1gPC/8cYY8ExLzZKYkDYmiZhAz
         ZjmuHaNipvL3bCNNOn81eAWwERYXV+/cWpOzVq6KqwtvrR2su/eG1Gji/1oe9jeuJeMF
         oTwbFr4ozJHT6oT5DHNyFKTWbE9WjQxQYRBqpI4HHMLgKxZwXSi42Bls9oKgD0gECup2
         Wir4qDKBDf6hCJikdScOhD/UxOoTBje+jz5vovwYGn+ua2hb8uVKLa7AVrk2Sfa1M/RW
         IVViHz0vRF2w/dXOOJ19E5myCTF/RCENAxhgP783cyvVZunv6xW/uqjGsb5Ghg2K59X1
         /f/w==
X-Gm-Message-State: AAQBX9ezdeeviiC4dhShb1Ji/0Pro9ycMxRRHoPQEnmMn0YbtpVd5DGC
        2sniTCiDbmwLu+ExwP6iQzjgWw==
X-Google-Smtp-Source: AKy350baFTEWrZDpHVjwi+mtMc0tjDZ/FRCxGqk1vFR7EqSo4UrFw3nAmUJVjjLMT/zjJRbOGeipaw==
X-Received: by 2002:a50:ea84:0:b0:4fb:b0ce:3f63 with SMTP id d4-20020a50ea84000000b004fbb0ce3f63mr4641257edo.28.1682096488884;
        Fri, 21 Apr 2023 10:01:28 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:687d:8c5:41cb:9883? ([2a02:810d:15c0:828:687d:8c5:41cb:9883])
        by smtp.gmail.com with ESMTPSA id e21-20020a50ec95000000b00502689a06b2sm1994858edr.91.2023.04.21.10.01.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Apr 2023 10:01:28 -0700 (PDT)
Message-ID: <2d7d8462-4e75-bbd2-4ae5-6403eda43020@linaro.org>
Date:   Fri, 21 Apr 2023 19:01:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH RESEND v2 1/2] dt-bindings: display: simple: add support
 for InnoLux G070ACE-L01
Content-Language: en-US
To:     Doug Anderson <dianders@chromium.org>
Cc:     richard.leitner@linux.dev,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org,
        Richard Leitner <richard.leitner@skidata.com>
References: <20230201-innolux-g070ace-v2-0-2371e251dd40@skidata.com>
 <20230201-innolux-g070ace-v2-1-2371e251dd40@skidata.com>
 <CAD=FV=XJCtqep+92h3gLfs4o2TwvL4MORjc9ydTSpZiZ0dsR0w@mail.gmail.com>
 <fb93e95f-181f-917d-9216-a81dec1a2959@linaro.org>
 <CAD=FV=Vs8UEfBZ56fYb3i1cmFbCSPrbgaedXB4+UvDTOyhzCzw@mail.gmail.com>
 <184f0a80-34bc-5ebf-58bb-82a310eb91f6@linaro.org>
 <CAD=FV=WLHpddAMo7GQwj98TtDn0xw6UzgYUKyVhSDZw1acKpCg@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CAD=FV=WLHpddAMo7GQwj98TtDn0xw6UzgYUKyVhSDZw1acKpCg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/04/2023 18:51, Doug Anderson wrote:
>>> ...and, again, it matches the order that I thought was right. In other
>>> words, the patch file generated says:
>>>
>>>> Signed-off-by: Richard Leitner <richard.leitner@skidata.com>
>>>> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>>
>> We talk about `b4 trailers`, because the tag is applied by the
>> submitter, not by the maintainer.
>>
>>>
>>> Did I get something wrong in the above?
>>
>> Your `b4 am` will of course put the tag later, because it is you who
>> applies the tag.
> 
> Ah, got it. So I guess from the perspective of "b4" every time the
> author modifies a patch (like adding new tags to it) then it's a new
> application of Signed-off-by and thus the old Signed-off-by is removed
> from the top and a new one is added below all the tags that have been
> received. Thus if b4 grabs all the tags off the mailing list for
> applying it ends up in a different order than if it grabs all the tags
> off the mailing list for sending a new version.
> 
> OK, I can understand that perspective. I'll keep it in mind.

Yeah. I actually agree with your point that submitter's SoB should
always be the last one, but I agree more with using process via
standardized tools. IOW, since I cannot change in this matter b4, I need
to agree with it. :)

Best regards,
Krzysztof

