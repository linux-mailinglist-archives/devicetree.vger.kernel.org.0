Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2667F5650A9
	for <lists+devicetree@lfdr.de>; Mon,  4 Jul 2022 11:24:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233488AbiGDJYD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 4 Jul 2022 05:24:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49410 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233468AbiGDJX7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 4 Jul 2022 05:23:59 -0400
Received: from mail-lf1-x141.google.com (mail-lf1-x141.google.com [IPv6:2a00:1450:4864:20::141])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EE137BE28
        for <devicetree@vger.kernel.org>; Mon,  4 Jul 2022 02:23:56 -0700 (PDT)
Received: by mail-lf1-x141.google.com with SMTP id a13so14711565lfr.10
        for <devicetree@vger.kernel.org>; Mon, 04 Jul 2022 02:23:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:reply-to:from:date:message-id:subject:to;
        bh=gEkepMaBkHVC2/CE/jh1RZ/vr0fzI6HMSVlofQpVza4=;
        b=L7K/Jvu8bcWoR9RIA7JJL0QEJ+w8IorauhV75Xun3Ik01Db8HJovAgOUWzTD1R0ri5
         1P65gJDfs0pwBWaE4fl2obnU62qRxJNA9QgjtsBXMDoAM850EfZNIaMbJwTWwcKZoLi8
         q/xevpms8EK+5B+w3oUS/lOO9SSl5PgzDQ7MhP+4OUsLUjzsDkTF7qKBlE3BV9xzkEYS
         0Im+XFqHuhwCr6GEso3DPWKpTyHlcPNHY9PJecJHV9qFqBzR1kdy451ncPWPXldvjiNy
         a8Gmjn+sCUe4G75b2dn4Nf9V3bWQMHQwZsUL4In4JOgxl1cgOfV8XDi+HRKcYIpRgCb2
         xZrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to;
        bh=gEkepMaBkHVC2/CE/jh1RZ/vr0fzI6HMSVlofQpVza4=;
        b=44toTjlauUagXBTs5jmbvToGsOHvkA+78wDfMCAnouhpDD/fs23iP4P7YJKqZTmMtV
         VOWyUl6bhTxw4BBd5tHGNc50OMN0Dj28lei4mw6J2Kpu+j4AL74VGap0nQgDpeAHd5Xq
         cIAXSk87lbTBPqH5FZMkQTNPdBKd49dyU8Tj6+I4Ygr98u47EMbd0o/5bQ5GK7SYeWWy
         yLDamYVAwd0OEdBAqWgcEQ+3iHY6wkXOVouJrVffkiSWHUJpG2CdkBA0gvCM8LKM+NM4
         jxNgCDxSyNtlJiefq5Cpwe/0J+ujPyOJj981BBtfBthDH2IZHDNS4JVx2n/91U/mL9fP
         JwbA==
X-Gm-Message-State: AJIora9ood2ZlyFAAg8/Xk/+45KM/m5bRDb6CHO44WkNV5GkNMiV1QZ1
        /R8f/gmGpyD9NY/MYDHCcdOVfQsSF502cSUUZ14=
X-Google-Smtp-Source: AGRyM1viicRg99hUZ/Eo0vTqxap/j+KXFJUHm3JG7B/GEfmaW8k7PL8GwsphIO/CJqkkdkiQFz33Xr+yH16zWd8gsFo=
X-Received: by 2002:a05:6512:683:b0:481:6f0:8853 with SMTP id
 t3-20020a056512068300b0048106f08853mr17491063lfe.365.1656926634791; Mon, 04
 Jul 2022 02:23:54 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ab3:7855:0:0:0:0:0 with HTTP; Mon, 4 Jul 2022 02:23:54 -0700 (PDT)
Reply-To: hj505432@gmail.com
From:   "Barrister. Ben Waidhofer" <omaloabrahamosama@gmail.com>
Date:   Mon, 4 Jul 2022 02:23:54 -0700
Message-ID: <CAOexQHGkyj5PXLnuookGfETa6kg4GYpnHsH11UW++7G6B_YfLw@mail.gmail.com>
Subject: Investment offer
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=4.7 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,FREEMAIL_REPLYTO,
        FREEMAIL_REPLYTO_END_DIGIT,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,UNDISC_FREEM autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Level: ****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

                                         Barrister. Ben Waidhofer.
                                              Chambers & Partners.
                                                42 Parker Street
                                                      London
                                                    WC2B 5PQ.


..I am the above named person from the stated law firm in London. I act
for Mr. Andrew Walker, a former loyalist and a personal Friend to the
President of Russia Vladimir Putin presently in London; he flew into
the UK months ago before the invasion of Ukraine by Russian government.
The sum of $3.5b was deposited in a Private bank in Switzerland for
the procurement of MIC war equipment from North Korea to fight the
war, but he has decided to back out of the initial plan to divert part
of the fund for investment in a viable venture.

There is a need for a matured and trusted individual or corporate
organization to receive part of the fund. All the needed documentation
will be perfected here in London.

You are at liberty to respond for more detail.

Thanks.
Regards,
Barrister. Ben Waidhofer
