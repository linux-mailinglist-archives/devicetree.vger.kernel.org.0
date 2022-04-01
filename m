Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B51684EED80
	for <lists+devicetree@lfdr.de>; Fri,  1 Apr 2022 14:53:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1343912AbiDAMzN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 1 Apr 2022 08:55:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36644 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243314AbiDAMzN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 1 Apr 2022 08:55:13 -0400
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3C988652E0
        for <devicetree@vger.kernel.org>; Fri,  1 Apr 2022 05:53:22 -0700 (PDT)
Received: by mail-lf1-x12c.google.com with SMTP id 5so4796501lfp.1
        for <devicetree@vger.kernel.org>; Fri, 01 Apr 2022 05:53:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=7nu5zI475wsuUxFB5uZqvOK31lUir62pBykPLjKXqpI=;
        b=mj/3g8GlwDJCedc6wEtcCOnv47S61n05MWOrLh2ietECkVriG7pgqIAqHb2gIjIlXw
         QRsRdNtAYPIGLdL7AmFylNZcMJUEgMM1GRH8D3BUQOZkDwjwD86sEVLbBVdx/HOkl6px
         wDkWD8qVlZyztGSAm7EeQBH9Uz/LRtf78qslUKOBiAUsH7BQjoJyxZ3GqOt17cjmvSyZ
         7YKRXwPtA0S+/YQX9QiWG+H2qMPv9bo1Q3mx72W4qxSqqY6pK2LLQWv7dLA3fh/LLG4J
         LTk7Oyh/T+/cWwQiW5VFHfmTMMKLJ+hbQa5g/MFL7pM2/mNv+f08pkDq6UWG20Ad9yJ1
         c9PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=7nu5zI475wsuUxFB5uZqvOK31lUir62pBykPLjKXqpI=;
        b=JbAWipmVLPIYkT8jafhmmh0apj+hYtQcLcY7dpi3aM/1BeixIoPzh5CkGE5FUNOw4X
         z0c2hOomxvdi6VGIk1RInTRGBchMQPmV3aYlT7PtGj/Q7XfNdCGpQ8+TI07MCxZyjSk2
         vOOzlojkzxVibphn558m6KMWow+AkkT7iILdq4o5TJ4A97kQMwdf0gmAMU5JhHSOIBBN
         q4UdHKGGgb2WQOJO71YWtUC/SvL7h7jvH+5+i28lR8vtHXTzqP4cuDVhUftY2+uvjXKG
         AsZP7NDnAa8cVgdlTf/ggUO0KgfQ4OXJ/HlXPLf7GM4sxxyiZ4QVg4OpALzk/4j2997h
         LOZA==
X-Gm-Message-State: AOAM533GCsXhn9+EaH6ilwdup4ZwngABQIdw7TKsLJ+WZSsICj+SsFc1
        EWPOXEzAfr+O2c3FvM1k/YPcN3NaIKY=
X-Google-Smtp-Source: ABdhPJyA0lnGdyc1WpOVKGgPfRRkLN0vtE7+nk/JTferqMtqYbGrezl06U1FZ0zZ7T9LODJS3umrzw==
X-Received: by 2002:a05:6512:2214:b0:44a:348a:d6d with SMTP id h20-20020a056512221400b0044a348a0d6dmr13815105lfu.506.1648817600032;
        Fri, 01 Apr 2022 05:53:20 -0700 (PDT)
Received: from smtpclient.apple (31-178-191-245.dynamic.chello.pl. [31.178.191.245])
        by smtp.gmail.com with ESMTPSA id a14-20020a05651c010e00b0024ae3080370sm26447ljb.88.2022.04.01.05.53.19
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 01 Apr 2022 05:53:19 -0700 (PDT)
Content-Type: text/plain;
        charset=utf-8
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Re: [PATCH v9 00/23] drm/rockchip: RK356x VOP2 support
From:   Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
In-Reply-To: <041d7795-fdec-8e7d-a9ee-aa79c0faa6f3@rock-chips.com>
Date:   Fri, 1 Apr 2022 14:53:16 +0200
Cc:     Sascha Hauer <s.hauer@pengutronix.de>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        =?utf-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
        Peter Geis <pgwipeout@gmail.com>,
        Sandy Huang <hjc@rock-chips.com>,
        dri-devel@lists.freedesktop.org,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        kernel@pengutronix.de,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: quoted-printable
Message-Id: <5FFECDDD-711F-4D50-97A2-D8213B154245@gmail.com>
References: <20220328151116.2034635-1-s.hauer@pengutronix.de>
 <FB201567-AE5A-4242-82F1-7C55D8F111EA@gmail.com>
 <20220330072822.GX12181@pengutronix.de>
 <0D8F5951-5375-46B5-BFF0-7ED410371EB7@gmail.com>
 <20220330094556.GZ12181@pengutronix.de>
 <D3DA14F9-C9C6-4927-B015-5B7D25689DAA@gmail.com>
 <20220330102046.GA12181@pengutronix.de>
 <60601619-EF07-457B-91F2-64FEB598FEBE@gmail.com>
 <20220330192054.GA4012@pengutronix.de>
 <af8445e0-f4af-721b-709e-2eb7c488a8a4@rock-chips.com>
 <B7CD9D55-9F2D-42F4-9D04-17C6A5FEBB08@gmail.com>
 <622c8786-2c3f-13ff-66b7-ad9c8cb9425e@rock-chips.com>
 <041d7795-fdec-8e7d-a9ee-aa79c0faa6f3@rock-chips.com>
To:     Andy Yan <andy.yan@rock-chips.com>
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



> Wiadomo=C5=9B=C4=87 napisana przez Andy Yan <andy.yan@rock-chips.com> =
w dniu 01.04.2022, o godz. 14:04:
>=20
> Hi Piotr:
>=20
> On 4/1/22 09:52, Andy Yan wrote:
>=20
> Pls update the new vop2_dump.sh scripts from github. The
>=20
> previous scripts I gave you has some bug. sorry.
>=20

Andy,

Sure. np.
Pls find dump with current vop2_dump.sh
https://pastebin.com/CwVj0kuX

btw: this is with latest patch from Sascha:
=
https://lore.kernel.org/linux-arm-kernel/20220330072822.GX12181@pengutroni=
x.de/


