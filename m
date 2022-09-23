Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 250475E7BE1
	for <lists+devicetree@lfdr.de>; Fri, 23 Sep 2022 15:30:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230456AbiIWNaj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Sep 2022 09:30:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39168 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231234AbiIWNae (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Sep 2022 09:30:34 -0400
Received: from mail-vs1-xe2f.google.com (mail-vs1-xe2f.google.com [IPv6:2607:f8b0:4864:20::e2f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1BFD3E11E6
        for <devicetree@vger.kernel.org>; Fri, 23 Sep 2022 06:30:32 -0700 (PDT)
Received: by mail-vs1-xe2f.google.com with SMTP id m65so13707511vsc.1
        for <devicetree@vger.kernel.org>; Fri, 23 Sep 2022 06:30:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
         :subject:date;
        bh=ddKdS4x8c4ZSI9PbKdla4xMHlbecpUYnHnf7KqPY/v4=;
        b=d2X5TW/gdJvvSijHGgE8Q2bnJrePr1qO3+NT+QOOTtO7ENwyu/w+X3SoMSaH0AocjA
         QW2s+GFTwgfupgoo8tNxqGEhZoS0kyOJxwemkNcT0J8pw7dae1qjSNdLndvegFu++oBQ
         vUnn6Y/NJ3+DEvHOkJEngIOZIqTNQ+oeEHF2pwhZzvA5Yc14ZXiBKTatqYyPViNBt1c/
         mBAv+LAtwH5DZdomtr35LG/D6gUCkymqSx0HWB/HCe+Sk5chJSgspzNiq1QrDxX6XDFT
         qlTY1/i5eIywr3mqvkfT1CIkObfwec5C0cdV+G4bnCV45b/fCpVBI030XBLYAG1D7N1q
         Trkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :x-gm-message-state:from:to:cc:subject:date;
        bh=ddKdS4x8c4ZSI9PbKdla4xMHlbecpUYnHnf7KqPY/v4=;
        b=L7z0jxa/XbSKzr+Mm0csNUrSchScAi7rDf7MLricx3R9WdR0YkL4aJZgzkpNnqgbtU
         kr/Ferfnc09JfnVe83Q+fzMwWN1uH72rjyTFEcskqTc1qQLzzEKKiGgYektZ/eqSMRMC
         PFTB+JqYjps+7430NcyIuuA+eD+uLEsetayThS21rOyhkUmOBwW7AaAcT4Hn2o1tyLbX
         5dqThe8LdqFixkY39T8du4xsYhEv3C8zihZTD8dB8ccaojlR16HAzogTiqZomj82WhEj
         k7DpYHBaqKMgp5LBHlx3NBMFW+AKBYL3DcDHnax8eb2ofCYQrCInRUbW5DD9NCaKix5D
         6t8g==
X-Gm-Message-State: ACrzQf0cdhCVVoL4/SFH93BYWXHRhGbbIjOwVQKluuMhGxi9Kb9P00hq
        WMy1dx9O3x47tzFcWYsamOUMcaN9JpfvpZfU21I=
X-Google-Smtp-Source: AMsMyM7v24o81Pg7ZiY+px9aDzEAysagD4r9pnYz08k5Uy+LlroI3bO+AFm5SuuCcZr2m5GwKjtHnIg9TJXshbfrp+0=
X-Received: by 2002:a67:b24a:0:b0:398:c6c7:b0d7 with SMTP id
 s10-20020a67b24a000000b00398c6c7b0d7mr3133162vsh.80.1663939830765; Fri, 23
 Sep 2022 06:30:30 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:612c:15a2:b0:2d3:aa6c:c9f7 with HTTP; Fri, 23 Sep 2022
 06:30:30 -0700 (PDT)
Reply-To: sb9174937@gmail.com
From:   Susan Bikram <sb8766198@gmail.com>
Date:   Fri, 23 Sep 2022 06:30:30 -0700
Message-ID: <CALhHHa=7mqgjOJ53x77So1YW6EfpZAUOmdQR=MdekrfpiFBefQ@mail.gmail.com>
Subject: Waiting to hear from you
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: Yes, score=5.2 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,FREEMAIL_REPLYTO,FREEMAIL_REPLYTO_END_DIGIT,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,UNDISC_FREEM autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
        *      https://www.dnswl.org/, no trust
        *      [2607:f8b0:4864:20:0:0:0:e2f listed in]
        [list.dnswl.org]
        *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
        *      [score: 0.5000]
        * -0.0 SPF_PASS SPF: sender matches SPF record
        *  0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
        *      digit
        *      [sb9174937[at]gmail.com]
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [sb8766198[at]gmail.com]
        *  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
        *       in digit
        *      [sb8766198[at]gmail.com]
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        *  3.1 UNDISC_FREEM Undisclosed recipients + freemail reply-to
        *  1.0 FREEMAIL_REPLYTO Reply-To/From or Reply-To/body contain
        *      different freemails
X-Spam-Level: *****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Dear ,

Please can I have your attention and possibly help me for humanity's
sake please. I am writing this message with a heavy heart filled with
sorrows and sadness.
Please if you can respond, i have an issue that i will be most
grateful if you could help me deal with it please.

Susan
