Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7D5655277E7
	for <lists+devicetree@lfdr.de>; Sun, 15 May 2022 15:54:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231892AbiEONyZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 15 May 2022 09:54:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40736 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231848AbiEONyZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 15 May 2022 09:54:25 -0400
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EF9E31114B
        for <devicetree@vger.kernel.org>; Sun, 15 May 2022 06:54:23 -0700 (PDT)
Received: by mail-ej1-x62f.google.com with SMTP id m20so24108413ejj.10
        for <devicetree@vger.kernel.org>; Sun, 15 May 2022 06:54:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=date:from:to:cc:message-id:mime-version:content-disposition;
        bh=DgaPCBzF93dvP86tI/YSLJt3WaimFrWvkZTgl04aT8Q=;
        b=Pi6jXte7TRH5lBEnpVUkm3JEoB/VsogexwKOERxO/PMVeaf/G6oqOniBcmTycf2IVA
         tUHLTYp7ZKs2b8A4xAJS6uJIb9qHaJQPdwKPiqWyaYBM2xf5B9L+Ubd3/U+DIa3m2KJr
         9UUgXjpOQe5oRFjVA3ELFFa+eiTKgBfgFF51A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:message-id:mime-version
         :content-disposition;
        bh=DgaPCBzF93dvP86tI/YSLJt3WaimFrWvkZTgl04aT8Q=;
        b=lIYVSPiREvaFwxPDye8knKF2JlIXnGo8LTEI2ICq8zTH292bx+73gNIxuWWs1Q3Z/+
         NBuzxq4JAxe2lVuqaM/kRtKjDcZg6IkuKKXprDEeEuLgClNrflqkUxE/YkflS5T/ChZq
         hd5vr6CSmZ40KHZuCSIpY5aozehWqZTMaOLD5vyCAh396zBBpcAdL7SLxgWydT4REK8o
         zgywdFbdGhJTOtk6Zpn0NLV1Aybyq9mHEfwgPgjK7nSQ+FQRdjp/PebvlWtks0QWarXw
         gUTybP0ZbTg/2NevM7U8UFMLFFecmwy4LHghR92elU9LIk9zn34nA3ozcBX2SsjYC38V
         DWgw==
X-Gm-Message-State: AOAM531WKOcrSjPz5Jm2DPZJbL5kucZyXVgAJxNL2urQa9RMZ8r5Pn/b
        xkCr6sJIAOpnmbJ7+n+RaTJX7scsqCt1OA==
X-Google-Smtp-Source: ABdhPJwKwd8rJP3+9fCn7hO1YJddpTOL8avpBoo1P8GflkTuNJh1HSj1rmzvQCfw5M7hnhB4bREVrw==
X-Received: by 2002:a17:907:7fac:b0:6f4:6b70:33d9 with SMTP id qk44-20020a1709077fac00b006f46b7033d9mr11317909ejc.380.1652622862547;
        Sun, 15 May 2022 06:54:22 -0700 (PDT)
Received: from tom-ThinkPad-T14s-Gen-2i (net-188-217-59-245.cust.vodafonedsl.it. [188.217.59.245])
        by smtp.gmail.com with ESMTPSA id hv6-20020a17090760c600b006f3ef214e60sm2639711ejc.198.2022.05.15.06.54.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 May 2022 06:54:21 -0700 (PDT)
Date:   Sun, 15 May 2022 15:54:19 +0200
From:   Tommaso Merciai <tommaso.merciai@amarulasolutions.com>
To:     Heiko Stuebner <heiko@sntech.de>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Message-ID: <20220515135419.GJ649073@tom-ThinkPad-T14s-Gen-2i>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Spam-Status: No, score=-0.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,MISSING_SUBJECT,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>
Bcc: 
Subject: px30 evb v11 20190507: camera issue ov5695
Reply-To: 

Hi Heiko,
I'm working on px30 mini evb v11 20190507, in particular on camera side. I
see your patch on dts to support ov5695 camera. Once I have enabled the
right config:

CONFIG_VIDEO_OV5695=y

I'm not able to probe the ov5695 camera correctly. In particular I got
the following error:

[    2.427936] ov5695 2-0036: Unexpected sensor id(000000), ret(-5)
[    2.438224] ov5695: probe of 2-0036 failed with error -5

Seem's that the camera is in reset, dumping bus 2 I got no address
from ov5695:

root@px30-evb:~# i2cdetect -y 2
     0  1  2  3  4  5  6  7  8  9  a  b  c  d  e  f
00:                         -- -- -- -- -- -- -- --
10: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
20: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
30: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
40: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
50: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
60: -- -- -- -- -- -- -- -- -

I'm missing something?

Thanks in advance.
Tommaso

-- 
Tommaso Merciai
Embedded Linux Engineer
tommaso.merciai@amarulasolutions.com
__________________________________

Amarula Solutions SRL
Via Le Canevare 30, 31100 Treviso, Veneto, IT
T. +39 042 243 5310
info@amarulasolutions.com
www.amarulasolutions.com
