Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1E20951EF27
	for <lists+devicetree@lfdr.de>; Sun,  8 May 2022 21:10:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230455AbiEHTDb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 8 May 2022 15:03:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47078 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1343707AbiEHSZm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 8 May 2022 14:25:42 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 68930BC2D
        for <devicetree@vger.kernel.org>; Sun,  8 May 2022 11:21:50 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id w1so20404714lfa.4
        for <devicetree@vger.kernel.org>; Sun, 08 May 2022 11:21:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=gyfkQnrJlNHhAn6+9MG49Hx9MQwFFjJbOEXow1boMqI=;
        b=PJBywVQEh/EUzbIhvMu64wUdOWF2cmbXHh0JnXzJXkAuV+42wjQglPMCE1qFVdXWYF
         vmFGr2Wn/YHIfRy1BJQK7GiQq37gSfM9tGVwtxvn67nKjMHD+HkYTxXjUZLd69FImpv9
         upbo2GbF6LHXoioPNPUjeE4lsjqASAe1FUwBXU2cIJrKF4wegJ3aUA6nfp4t+gVHHjn9
         5kqFazBC+8Xhx1jbEZxNIphfhxQoO0ZszDShCfPyRSGJ0UpaXCKT4729FK5NUuygIxFK
         2xxBXVvwTLnBBDyFuaMCPhIlYenWhcGcL306ddr0iaj65AUVI63976wAqqwKbXEblEDz
         b88A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=gyfkQnrJlNHhAn6+9MG49Hx9MQwFFjJbOEXow1boMqI=;
        b=tSQcE8FDSp+hohhd3mlrpUkiwYXd6DnxmmrBvn7TZ/zESWU6KVdamcR8q1BGtw70ZR
         xMxadLjwpax028W4rxIM5tutVaMnZuyyBqYTMwjOyo5KKwGbGyclq8fCMWrt3hafERNN
         Yi4NmetTH0x9Nycewbwae8ibXbzxF9Msu63Mm3Zose3YFN6v2B6MCoZse3LVUe4GcVR3
         pdCXpxCnsOVQWURxgkXB1hSYTwd8jsx/DI+3nmucQBH+xqnT6NKWxDv5w6I/epmfLGJ6
         s3+SqaDq7zzlummQtCz2HitSIqnjDjhsgDGCk3RY1kNWrE9P7pslDLf0Ha4lcgrif/YF
         S2+Q==
X-Gm-Message-State: AOAM530CNYTGoQvg4WKS0mK2jIhOB0D8oYVaoJfOt5DZZJEBMuipQlys
        9e5EFgT1jmfIXJ5YWsAEB6U=
X-Google-Smtp-Source: ABdhPJwHID2ULTkNdIKhwTDRPaqsf8010Sn55bgPPznVD4x9VKvT+I0iZjMERyNXkPZlng4SwMwzdw==
X-Received: by 2002:a05:6512:3090:b0:473:a636:dbee with SMTP id z16-20020a056512309000b00473a636dbeemr9917513lfd.119.1652034108135;
        Sun, 08 May 2022 11:21:48 -0700 (PDT)
Received: from smtpclient.apple (31-178-191-245.dynamic.chello.pl. [31.178.191.245])
        by smtp.gmail.com with ESMTPSA id h10-20020a2e530a000000b0024f3d1daee4sm1447782ljb.108.2022.05.08.11.21.46
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 08 May 2022 11:21:47 -0700 (PDT)
Content-Type: text/plain;
        charset=us-ascii
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Re: [PATCH v11 20/24] arm64: dts: rockchip: enable vop2 and hdmi tx
 on rock-3a
From:   Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
In-Reply-To: <CAMdYzYobfJ7WGN+UQ7t5e1Zy9knjfHLse8KzrGrHPfeMkkG0gw@mail.gmail.com>
Date:   Sun, 8 May 2022 20:21:44 +0200
Cc:     Sascha Hauer <s.hauer@pengutronix.de>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        dri-devel@lists.freedesktop.org,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Sandy Huang <hjc@rock-chips.com>,
        =?utf-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
        kernel test robot <lkp@intel.com>
Content-Transfer-Encoding: quoted-printable
Message-Id: <9F2D8CFF-1EAE-4586-9EE9-82A9D67840BB@gmail.com>
References: <20220422072841.2206452-1-s.hauer@pengutronix.de>
 <20220422072841.2206452-21-s.hauer@pengutronix.de>
 <A86359EC-5291-41BD-966E-EB7890644731@gmail.com>
 <CAMdYzYoFG3wCQaWXQNJd7mE20OMCj=ZeuewwZfaCJyoCBT-kQQ@mail.gmail.com>
 <0E6FE020-C95E-47CF-A9D6-AC3F2B2D334F@gmail.com>
 <CAMdYzYobfJ7WGN+UQ7t5e1Zy9knjfHLse8KzrGrHPfeMkkG0gw@mail.gmail.com>
To:     Peter Geis <pgwipeout@gmail.com>
X-Mailer: Apple Mail (2.3654.120.0.1.13)
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


>>=20
>> I think i have this already (pls see L231/L232 in =
https://pastebin.com/67wu9QrH )
>=20
> I see you have hdmitxm1_cec as the enabled pin. Are you certain it's
> the m1 pin and not the m0 pin?

It depends on board ver.
pls look: =
https://github.com/radxa/kernel/commit/c1d727692e85c0a265913a72e517cf2bd71=
131ba

>>=20
>> Maybe i miss something but adding:
>>=20
>> &usb2phy0_otg {
>>        phy-supply =3D <&vcc5v0_usb_host>;
>>        status =3D "okay";
>> };
>>=20
>> breaks working usb3 port0
>> (so none of usb3 ports are working)
>=20
> Please pass along a full dmesg in this configuration.

Here it is: https://pastebin.com/uArtBLaZ


