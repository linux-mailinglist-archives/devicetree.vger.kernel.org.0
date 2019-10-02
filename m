Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 3B5FAC9444
	for <lists+devicetree@lfdr.de>; Thu,  3 Oct 2019 00:24:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727705AbfJBWYI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Oct 2019 18:24:08 -0400
Received: from mail-io1-f66.google.com ([209.85.166.66]:39331 "EHLO
        mail-io1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725799AbfJBWYI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Oct 2019 18:24:08 -0400
Received: by mail-io1-f66.google.com with SMTP id a1so1012875ioc.6
        for <devicetree@vger.kernel.org>; Wed, 02 Oct 2019 15:24:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=dwiBUbDvj+99or6CWyhr/vlA0vFW+3yf473QWcd1/1k=;
        b=f59VWKPlW77r+626KYZxJnyNLG8BD90K4VFBHcG//pORlzf8wYWqBnBNPHO2ECJzUx
         59RW7ke/ziFCIczsmf9wvmQmh3OvsYEzpXVjTQsFWWsGwqVLcVtvHi9uNsidKCMpxVyv
         +8+R1w9Ctas0Z9M9OzZEStDYOtX4T9Ohnh9r8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=dwiBUbDvj+99or6CWyhr/vlA0vFW+3yf473QWcd1/1k=;
        b=mwXMMzLLHbreYTJgjQMI/oB8o/hpaxRXMwdDQ+xeS1nnwBAdVqT4nbDXtLbE+NlZQU
         +o5t4W1YS74fAhmnKnuzqrodp+ii3nD9VzhbUW9B+G1j9yrUKIyeKVcRmFyyXEHKyypj
         z/YfZ+M26HKeMlugnxzwAksYFoTjyjN106chzh5QLf2NBNjtzA6rzHOWmj2aZkdizj9T
         V2uvOVs3zP3WM/XAmZPz8N23ZkbMbjfyfzT6jd6J0+jseK3tKdm4PcbbQyqIjN/FFPBN
         3BY9rAMBnfXRZ9TmEMnTiHqxtS8Ul3qWx/jBRQSL0iri0B6JoZD2zQyUUBUhzzmM7yjC
         mzdw==
X-Gm-Message-State: APjAAAV+nkNUWXrbo0815QyMhlFnVG+5yIS18ENPoMDhVCi1vuD1PbGR
        uNouyaLsslkX5JYIo27a9rkav3bjzns=
X-Google-Smtp-Source: APXvYqzD18QdvWh9QQoJxBoWmeieUFRc9XYT4JjD1R6B0e81Y93rSjQQ97Yx+No86ob5FITKz+Wdhw==
X-Received: by 2002:a92:6506:: with SMTP id z6mr6707994ilb.161.1570055047406;
        Wed, 02 Oct 2019 15:24:07 -0700 (PDT)
Received: from mail-io1-f41.google.com (mail-io1-f41.google.com. [209.85.166.41])
        by smtp.gmail.com with ESMTPSA id l82sm662800ilh.23.2019.10.02.15.24.06
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Oct 2019 15:24:07 -0700 (PDT)
Received: by mail-io1-f41.google.com with SMTP id u8so1022639iom.5
        for <devicetree@vger.kernel.org>; Wed, 02 Oct 2019 15:24:06 -0700 (PDT)
X-Received: by 2002:a92:844f:: with SMTP id l76mr6360533ild.218.1570055045845;
 Wed, 02 Oct 2019 15:24:05 -0700 (PDT)
MIME-Version: 1.0
References: <20191001160735.1.Ic9fd698810ea569c465350154da40b85d24f805b@changeid>
In-Reply-To: <20191001160735.1.Ic9fd698810ea569c465350154da40b85d24f805b@changeid>
From:   Doug Anderson <dianders@chromium.org>
Date:   Wed, 2 Oct 2019 15:23:54 -0700
X-Gmail-Original-Message-ID: <CAD=FV=UnZtGN142yUu-NzVG00P=1MZ-X3aY+cjrMRCnL2D8xFg@mail.gmail.com>
Message-ID: <CAD=FV=UnZtGN142yUu-NzVG00P=1MZ-X3aY+cjrMRCnL2D8xFg@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: rockchip: Use interpolated brightness tables
 for veyron
To:     Matthias Kaehlcke <mka@chromium.org>
Cc:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        devicetree@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Tue, Oct 1, 2019 at 4:07 PM Matthias Kaehlcke <mka@chromium.org> wrote:
> --- a/arch/arm/boot/dts/rk3288-veyron-minnie.dts
> +++ b/arch/arm/boot/dts/rk3288-veyron-minnie.dts
> @@ -39,39 +39,8 @@
>
>  &backlight {
>         /* Minnie panel PWM must be >= 1%, so start non-zero brightness at 3 */
> -       brightness-levels = <
> -                         0   3   4   5   6   7
> -                         8   9  10  11  12  13  14  15
> -                        16  17  18  19  20  21  22  23
> -                        24  25  26  27  28  29  30  31
> -                        32  33  34  35  36  37  38  39
> -                        40  41  42  43  44  45  46  47
> -                        48  49  50  51  52  53  54  55
> -                        56  57  58  59  60  61  62  63
> -                        64  65  66  67  68  69  70  71
> -                        72  73  74  75  76  77  78  79
> -                        80  81  82  83  84  85  86  87
> -                        88  89  90  91  92  93  94  95
> -                        96  97  98  99 100 101 102 103
> -                       104 105 106 107 108 109 110 111
> -                       112 113 114 115 116 117 118 119
> -                       120 121 122 123 124 125 126 127
> -                       128 129 130 131 132 133 134 135
> -                       136 137 138 139 140 141 142 143
> -                       144 145 146 147 148 149 150 151
> -                       152 153 154 155 156 157 158 159
> -                       160 161 162 163 164 165 166 167
> -                       168 169 170 171 172 173 174 175
> -                       176 177 178 179 180 181 182 183
> -                       184 185 186 187 188 189 190 191
> -                       192 193 194 195 196 197 198 199
> -                       200 201 202 203 204 205 206 207
> -                       208 209 210 211 212 213 214 215
> -                       216 217 218 219 220 221 222 223
> -                       224 225 226 227 228 229 230 231
> -                       232 233 234 235 236 237 238 239
> -                       240 241 242 243 244 245 246 247
> -                       248 249 250 251 252 253 254 255>;
> +       brightness-levels = <3 255>;
> +       num-interpolated-steps = <251>;

I _think_ you want:

brightness-levels = <0 3 255>;
num-interpolated-steps = <252>;

Specifically:

* It seems like you're intending to keep everything the same and just
have a more compact representation, right?  Looking through the values
in '/sys/class/backlight/backlight' on minnie shows differences before
and after your patch.

* I think you want brightness of 0 to match to PWM level 0.

* If I put in printouts in the code with your table, I see:

pwm-backlight backlight: new number of brightness levels: 252
pwm-backlight backlight: i=0, j=0, lc=0, value=3
pwm-backlight backlight: i=0, j=1, lc=1, value=4
...
pwm-backlight backlight: i=0, j=250, lc=250, value=253
pwm-backlight backlight: lc=251, data->levels[i]=255

...as you can see, you end up missing assigning a value of 254.


-Doug
