Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 17BE05F7B56
	for <lists+devicetree@lfdr.de>; Fri,  7 Oct 2022 18:23:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229703AbiJGQXg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 7 Oct 2022 12:23:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49620 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229507AbiJGQXf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 7 Oct 2022 12:23:35 -0400
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com [IPv6:2607:f8b0:4864:20::102e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 81DD5DD8B0
        for <devicetree@vger.kernel.org>; Fri,  7 Oct 2022 09:23:33 -0700 (PDT)
Received: by mail-pj1-x102e.google.com with SMTP id l1-20020a17090a72c100b0020a6949a66aso5196716pjk.1
        for <devicetree@vger.kernel.org>; Fri, 07 Oct 2022 09:23:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eVKfZA3SwiGf8qlPzooH70x5W9OPocalRMd2pDz1Njs=;
        b=p2/iQy2rmgnIEXndt1c2isSc528d1W0zf8zkAfgqNNIl5UA0prvbJAsSh7vGwFQM/0
         4bR6mo4ZdZ8xl1o1XciNISLkeYTSgYbfTvjTDDOwlrNZuZ/5X/kU9bgmcnPUEC3n0r8c
         GusLDh2umCN6OKQqwHZQApqruIhHANWWSGXx9J68P+SuOpjXsdK21rgSL3Rk0gTtzdgA
         9VciZozMJ6WZqF5PHv7zRUiuVReKM2VcGq6PUlnDv+QmsVHlb0wrAihiuy9rn1cHNWSJ
         BskEWzzqJ4s3Umuv6V6W51Ea0YGoeCtlS33EayGiVwGjl0ixsOvfxvZec4OgHHeZ94D+
         ZTvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eVKfZA3SwiGf8qlPzooH70x5W9OPocalRMd2pDz1Njs=;
        b=Uz3C8CixJffEkyZ1o9V+uqOEai4syuo54rFejs/eljNJSXV5TrTSkjP7gGrMCIMjAe
         NwPXqt2yV5y9CVTjfXjjrrBfgfADktNB5kQHKK/a6p17hj0uJZclCgUDhCBceXEksSaX
         YRpa7m03ISn3nblQh9a7Dhz48G87PLuWy2bxh1Yv6EbUxRQFhKtPrNtOa/VUlHJojkRG
         +UqjdU1+fePdLxR85bcVChynyXAM4oW/rAGNfZMI+ynOv9YPWm1lXeQrQOlDyQccaVmF
         FLj3TrwlEbknYwncWPvDxkJsgEUVeYb9Yl9mdIpHkyIGIkdu2Oq77QrtGqzhZfGrDHAO
         XEtA==
X-Gm-Message-State: ACrzQf2I7IpscL6VZ+576Cgu82F2bax4QpsnWZo6YwZwyaGKuIW+NuKy
        yrYFDuDZJl3Idkv/nNWlmE5mFg2powy3Jbl6Aoc=
X-Google-Smtp-Source: AMsMyM4aNBOg2ixK2Ti0iz9E/9RVTENMJ07GV2dAkCNAb+dyKVlrCjBfxPMdCqWIQ4OR+51pVLKtY9y3EHVDJ1tA6vw=
X-Received: by 2002:a17:90b:4d0c:b0:20b:c983:2d85 with SMTP id
 mw12-20020a17090b4d0c00b0020bc9832d85mr3153480pjb.45.1665159811878; Fri, 07
 Oct 2022 09:23:31 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:7022:10e:b0:45:df8d:92fb with HTTP; Fri, 7 Oct 2022
 09:23:31 -0700 (PDT)
Reply-To: mrs.feleciajonathan001@gmail.com
From:   "Mrs.Felecia Jonathan" <salifdene5@gmail.com>
Date:   Fri, 7 Oct 2022 09:23:31 -0700
Message-ID: <CAC0oiJZaJ6zkQTCyu5MfoaAN_pdJQvFjhWBTDQVyRWNJ1WW1sQ@mail.gmail.com>
Subject: HI
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: Yes, score=5.2 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,FREEMAIL_REPLYTO,FREEMAIL_REPLYTO_END_DIGIT,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_HK_NAME_FM_MR_MRS,
        UNDISC_FREEM autolearn=no autolearn_force=no version=3.4.6
X-Spam-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
        *      https://www.dnswl.org/, no trust
        *      [2607:f8b0:4864:20:0:0:0:102e listed in]
        [list.dnswl.org]
        *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
        *      [score: 0.5000]
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [salifdene5[at]gmail.com]
        * -0.0 SPF_PASS SPF: sender matches SPF record
        *  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
        *       in digit
        *      [salifdene5[at]gmail.com]
        *  0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
        *      digit
        *      [mrs.feleciajonathan001[at]gmail.com]
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        *  0.0 T_HK_NAME_FM_MR_MRS No description available.
        *  3.1 UNDISC_FREEM Undisclosed recipients + freemail reply-to
        *  1.0 FREEMAIL_REPLYTO Reply-To/From or Reply-To/body contain
        *      different freemails
X-Spam-Level: *****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

 Am a dying woman here in the hospital, i was diagnose as a Cancer
patient over  2 Years ago. I am A business woman how
dealing with Gold Exportation.I Am from Us California
I have a charitable and unfufilment

project that am about to handover to you, if you are interested please
Reply
hope to hear from you.
Regard
Mrs. Felecia Jonathan
