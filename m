Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B461F1942A0
	for <lists+devicetree@lfdr.de>; Thu, 26 Mar 2020 16:09:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728495AbgCZPJS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 Mar 2020 11:09:18 -0400
Received: from mail-wm1-f54.google.com ([209.85.128.54]:39770 "EHLO
        mail-wm1-f54.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728325AbgCZPJS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 26 Mar 2020 11:09:18 -0400
Received: by mail-wm1-f54.google.com with SMTP id a9so7375507wmj.4
        for <devicetree@vger.kernel.org>; Thu, 26 Mar 2020 08:09:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mind.be; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=E0GJUQPVsMd5TbC3erUCDPkE9bbfDzqYVz1yZ36hycs=;
        b=eP2WmCJrPPRXBcY/RYIcIP4Wqy0UcogG/a65EmNz4OfNcp0/DMu19YCMbsMqvVw6+g
         tgT7whXqfQTzf2xQz3EL+VOOagUBw3/7Bn6r+ayeoENr+eS4h9Bsuz4EyMT0OHV+HYVN
         h+u37NoAay4nNGFkV0ogNEinbvVmx7a6Bilzwb+EadzQOrkdBJpHmrPWaLA4i7+xPx3a
         jSXpZwcuFmsvXKQOwvrtPqxJOsyZq3iLy3ovqlcKJ7MvokpZlbthZlTvttS72Yk/Nc7z
         gTn8VKHbbAYRoK2VfrMRkYArXo95lauU3Yg6FUPwTiapyOvJx6oYdasw6B7Xc6MPa2/x
         uTEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=E0GJUQPVsMd5TbC3erUCDPkE9bbfDzqYVz1yZ36hycs=;
        b=YifMst1tWisVLTooKXglSxdZPREccdLjXuFcgtAhbgkSWSKLNBbpAUeT8ZnXrOa1Eb
         xC2ZCVNfjaCysfrpGDiOXUCyqMq0Ffy1f4L3EvskAnhmeD7NksUYmH2sA6V8P8RLdub0
         S2FohZeyiKZO/zX4JNhIFnrkd6FpPDmXwwPOyjIlueJtEMLuU8jRxdREYT+hK6bjxUyk
         c0JGhqaaXDdS4jxk4N87EuxsTUO1wqk1onOTVoFGlyy52l+nIejm7DDV2MMwsgUvtWcp
         QOatrXvQHZd4vSBaGhrMr+6dYJXnfx4TPg0TAtNsy4jeExM7ePMAUVPRHKjwXJCD9JyQ
         b22Q==
X-Gm-Message-State: ANhLgQ2yG1mVkCp9R+E1JwZgR1F4QI2LunXdYC10tvsu9JiOuUw2Mfn/
        Tl1tccBuTZP4y7oaB/wRyJvXqgdIXOHIvw==
X-Google-Smtp-Source: ADFU+vvNmnw9M189Loxx6OENxpQCbO/5e2+radcNIN6Y5Fh23XaAcmUzBACxoomX+YwWUSWbeNmgCg==
X-Received: by 2002:a1c:9e97:: with SMTP id h145mr373802wme.61.1585235355218;
        Thu, 26 Mar 2020 08:09:15 -0700 (PDT)
Received: from ?IPv6:2a02:a03f:c930:4300:2b1a:3a25:ef77:ee9e? ([2a02:a03f:c930:4300:2b1a:3a25:ef77:ee9e])
        by smtp.gmail.com with ESMTPSA id d6sm3979031wrw.10.2020.03.26.08.09.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Mar 2020 08:09:14 -0700 (PDT)
Subject: RESEND: [PATCH 6/6 V3] ASoC: tas5756m: Add DT binding document
To:     Rob Herring <robh@kernel.org>
Cc:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org
References: <20200308142509.27765-1-charles-antoine.couret@mind.be>
 <20200308142509.27765-7-charles-antoine.couret@mind.be>
 <20200309203847.GA31358@bogus>
From:   Couret Charles-Antoine <charles-antoine.couret@mind.be>
X-Pep-Version: 2.0
Message-ID: <d732e234-dcb9-d352-2f31-22c5801e8c28@mind.be>
Date:   Thu, 26 Mar 2020 16:09:13 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200309203847.GA31358@bogus>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Le 09/03/2020 =C3=A0 21:38, Rob Herring a =C3=A9crit=C2=A0:
> On Sun,  8 Mar 2020 15:25:09 +0100, Charles-Antoine Couret wrote:
>> Document the bindings for the tas5756m driver.
>>
>> Signed-off-by: Charles-Antoine Couret <charles-antoine.couret@mind.be>=

>> ---
>>  .../devicetree/bindings/sound/tas5756m.yaml   | 64 ++++++++++++++++++=
+
>>  1 file changed, 64 insertions(+)
>>  create mode 100644 Documentation/devicetree/bindings/sound/tas5756m.y=
aml
>>
> My bot found errors running 'make dt_binding_check' on your patch:
>
> Error: Documentation/devicetree/bindings/sound/tas5756m.example.dts:23.=
37-38 syntax error
> FATAL ERROR: Unable to parse input tree
> scripts/Makefile.lib:311: recipe for target 'Documentation/devicetree/b=
indings/sound/tas5756m.example.dt.yaml' failed
> make[1]: *** [Documentation/devicetree/bindings/sound/tas5756m.example.=
dt.yaml] Error 1
> Makefile:1262: recipe for target 'dt_binding_check' failed
> make: *** [dt_binding_check] Error 2
>
> See https://patchwork.ozlabs.org/patch/1251057
> Please check and re-submit.
Hi Rob,

I don't understand this issue. My example is based on a real device tree
and it works fine.

I don't have access to your
"Documentation/devicetree/bindings/sound/tas5756m.example.dts" file so I
can not reproduce it. I executed your script before sending the patch
(but without extracting the example) and it was fine.

Can you explain the issue please?

Thank you in advance and have a nice day,

Charles-Antoine Couret

