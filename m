Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7888B58A546
	for <lists+devicetree@lfdr.de>; Fri,  5 Aug 2022 06:24:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232779AbiHEEYh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 5 Aug 2022 00:24:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45762 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230475AbiHEEYg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 5 Aug 2022 00:24:36 -0400
Received: from mail-pg1-x52e.google.com (mail-pg1-x52e.google.com [IPv6:2607:f8b0:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 13EF2205F5
        for <devicetree@vger.kernel.org>; Thu,  4 Aug 2022 21:24:36 -0700 (PDT)
Received: by mail-pg1-x52e.google.com with SMTP id d7so1652156pgc.13
        for <devicetree@vger.kernel.org>; Thu, 04 Aug 2022 21:24:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc;
        bh=lcZ2t0LpE/APjnxBS48DvMi6cCGFT64qJ81TBG1Fo/4=;
        b=Go+HwIS/D1Hi2Sly8v/xYR1QtD+3/0EhX0u15wWVg2S7xcmAsLr+CtJNNyhH7SB27l
         Dxt9Jtuu7U5I+B/21Qz4dymrXr7YEq78ln4djyWkVhp+45VS8JIrgJI0m+6wMe0AMho9
         4F+LCwFU7kf2CdPQYybOkWe4p5aQWgW9la0shc4i2uOjDYorJQvFQb4iOBLsDtLYc/EG
         UZP4q9S2rpuEUsGHfwEIOiQLAP2hmJ1u7SV0MrutWF3zjNoDpISJaBniSX7ua+GwSEx/
         2h+izoFp8T/wXCCG3Y4VWAvF0ZM7JoPuDKgmmue/7WITaMvwhbzdI4ynFLJYnJiYuTc2
         PWbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :x-gm-message-state:from:to:cc;
        bh=lcZ2t0LpE/APjnxBS48DvMi6cCGFT64qJ81TBG1Fo/4=;
        b=kgHnGlt6Rne4z4ed58xtY8/rrj9/2gm7iSTCaNs24O6drZ+zS7rYheUyXNhIBHru9j
         gsoyOaAmEFtSQIsutz+fwEf96nkkxn8OktWYLnBXAjuP34oika8g8Gu3jtH4GBqBEk8C
         +kJ6uFlIbS+/0HpHDblmZtANBYvb7rFIyV7nhE8SuR678mGpAD5bCaFOPRELCjC43pBT
         pCcyNhlRVr4xi5tvZ3IQwaoh37uotbUSEePdP9B9ZuUTNtg5Tl54mUsUAvwB32IYniaG
         BLxpAzO5DQuxu5ykOwvVPcAOrdumlGFv1TvCNmmWhVXSDZdCenv7Sv4NHixLSMiZnshG
         eodA==
X-Gm-Message-State: ACgBeo0yfFts/L6XBtJ0LnWFGS4l/5w4hjugE0ChdW4MPE2WEcejO9Ex
        BmvOXL14KmX79xWleAYIp82tYcaRc/inZd3qbQI=
X-Google-Smtp-Source: AA6agR65cAMx1BeDeoPY0XlrIqemqfmAvktOcifnbNdr1Wec4L16+L3xNDcl8P+M0qyE8vweWPpXyIFnq2tec072CoY=
X-Received: by 2002:a63:d409:0:b0:41b:f15:4719 with SMTP id
 a9-20020a63d409000000b0041b0f154719mr4278040pgh.519.1659673475049; Thu, 04
 Aug 2022 21:24:35 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:7300:bc0d:b0:6c:15c1:f63f with HTTP; Thu, 4 Aug 2022
 21:24:34 -0700 (PDT)
Reply-To: stbzan@gmail.com
From:   Sheikh Tahnoon Al Nahyan <mohasaeedmoha01@gmail.com>
Date:   Fri, 5 Aug 2022 05:24:34 +0100
Message-ID: <CAGbpBdcYH8mieavzetDi6jsnESfMDUx3Ch3C1MOJntGXqP4oBg@mail.gmail.com>
Subject: Business
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: Yes, score=5.0 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,FREEMAIL_REPLYTO,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
        SPF_PASS,UNDISC_FREEM autolearn=no autolearn_force=no version=3.4.6
X-Spam-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
        *      https://www.dnswl.org/, no trust
        *      [2607:f8b0:4864:20:0:0:0:52e listed in]
        [list.dnswl.org]
        *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
        *      [score: 0.5128]
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [mohasaeedmoha01[at]gmail.com]
        *  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
        *       in digit
        *      [mohasaeedmoha01[at]gmail.com]
        * -0.0 SPF_PASS SPF: sender matches SPF record
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        *  3.2 UNDISC_FREEM Undisclosed recipients + freemail reply-to
        *  1.0 FREEMAIL_REPLYTO Reply-To/From or Reply-To/body contain
        *      different freemails
X-Spam-Level: *****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

-- 
Hello,

Sir, i have business that i would like to share you.

Thank you.
