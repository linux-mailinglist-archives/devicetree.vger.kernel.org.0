Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 60D156F69BB
	for <lists+devicetree@lfdr.de>; Thu,  4 May 2023 13:21:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229768AbjEDLV5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 4 May 2023 07:21:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44668 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229564AbjEDLV4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 4 May 2023 07:21:56 -0400
Received: from mail-vk1-xa36.google.com (mail-vk1-xa36.google.com [IPv6:2607:f8b0:4864:20::a36])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 78EDA49F7
        for <devicetree@vger.kernel.org>; Thu,  4 May 2023 04:21:55 -0700 (PDT)
Received: by mail-vk1-xa36.google.com with SMTP id 71dfb90a1353d-44062aa1b5bso118537e0c.1
        for <devicetree@vger.kernel.org>; Thu, 04 May 2023 04:21:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683199314; x=1685791314;
        h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HJLlk5da4L8Ltn8jDx/W/MCW09bm52RtkanOa7KHQUw=;
        b=R+BgV7xQaGsSuUhsoLc/9wEzX2f0sdwtRhoH/e++pTijHvitz40vFF4Sh9UaW4PxSf
         yIKAIjH2RaYyBwdesDeIDU2U98biAtjfQipblePdzyYCW/45bdvGgWF4H7tkiURGTvAc
         LV3uXMREjOf9Av6DDdPoqGuowvxhmOA1jo7/PwObJ0X1qHhJ56zyBh56T3m9PFxCh52s
         WbJPQ2CZCAbPf8aZIuOg2nQn9hrsQEwn8lZMbDamnlavEGuVA0ZtdBeVSG1zaXTKLnpX
         Bb2wgdNqEwwvDDcjJM0czzgSk95sN7vwXsbZvDr67GacGp6ZGPlypeiXt7vvjF3+B2zR
         64dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683199314; x=1685791314;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HJLlk5da4L8Ltn8jDx/W/MCW09bm52RtkanOa7KHQUw=;
        b=VK4DxP22JQu5fhHziByYM/8yPR9qZCDe2tN7J+/yKtigfbMsy9lxn1ez8D6YK3Ouz4
         d7qCznsMwdRM9p0mpRwi8i06VkOzbiR14Qtj03ga21Urs/5HiZNgCppDuv54zbF2bYC8
         hnxiFkSP+CWFfHb61sPWfYVgwOKoimJE+gXyv0JuwzX0tvWObvLgCHoh/xQYwMzcbh2L
         lA1dnWqywy6MLYQ7gfuMklSKVjRIra8OxzYmVnbzkzwD1zsKO4Uwx4lRyRU7uXxh2CUz
         LNTC1LnvRt2G9zzyrd+KHO4TZskGuhz5nrBPJDAe2JfyFxTtbw8sO/Vc8a2kDW89Zefn
         dArw==
X-Gm-Message-State: AC+VfDx/bb6g/YZT7cDuSucZrix8wOGVDSTwLranud8o95a+Ebpi6bck
        rvHS0OXGSUoebdhVIdKN8H27ILz6CNiN3JXGWVU=
X-Google-Smtp-Source: ACHHUZ5OmaSuKaPuy9I1JeqayWS5t3DGeMxbo4hMNx8s+29Y7qqICNgbAQdrMTEeAO6NyDAoSmUYMomIQ4sgG0JhCWY=
X-Received: by 2002:a1f:4342:0:b0:44f:e6ff:f316 with SMTP id
 q63-20020a1f4342000000b0044fe6fff316mr275041vka.12.1683199314089; Thu, 04 May
 2023 04:21:54 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6124:590:b0:35e:69e6:84a8 with HTTP; Thu, 4 May 2023
 04:21:53 -0700 (PDT)
Reply-To: avamedicinemed1@gmail.com
From:   Dr Ava Smith <okwumasochi@gmail.com>
Date:   Thu, 4 May 2023 04:21:53 -0700
Message-ID: <CAHN+otzei8F+CBnEHx+s8MMFAmP3aNGafDiaAz6-0nAX5kvOQA@mail.gmail.com>
Subject: HI DEAR
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: Yes, score=7.7 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,FREEMAIL_REPLYTO,
        FREEMAIL_REPLYTO_END_DIGIT,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,UNDISC_FREEM,UNDISC_MONEY autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
        *      https://www.dnswl.org/, no trust
        *      [2607:f8b0:4864:20:0:0:0:a36 listed in]
        [list.dnswl.org]
        *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
        *      [score: 0.4966]
        * -0.0 SPF_PASS SPF: sender matches SPF record
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [okwumasochi[at]gmail.com]
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        *  0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
        *      digit
        *      [avamedicinemed1[at]gmail.com]
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        * -0.0 T_SCC_BODY_TEXT_LINE No description available.
        *  2.8 UNDISC_FREEM Undisclosed recipients + freemail reply-to
        *  1.0 FREEMAIL_REPLYTO Reply-To/From or Reply-To/body contain
        *      different freemails
        *  3.1 UNDISC_MONEY Undisclosed recipients + money/fraud signs
X-Spam-Level: *******
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello Dear,
how are you today?hope you are fine.
My name is Dr Ava Smith ,Am an English and French nationalities.
I will give you pictures and more details about me as soon as i hear from you
Reply me through my official email (avamedicinemed1@gmail.com)
Thanks
Ava
