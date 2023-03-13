Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DA5E36B789F
	for <lists+devicetree@lfdr.de>; Mon, 13 Mar 2023 14:14:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229622AbjCMNOv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Mar 2023 09:14:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50704 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230411AbjCMNOt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Mar 2023 09:14:49 -0400
Received: from mail-pg1-x531.google.com (mail-pg1-x531.google.com [IPv6:2607:f8b0:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7F0348A4E
        for <devicetree@vger.kernel.org>; Mon, 13 Mar 2023 06:14:48 -0700 (PDT)
Received: by mail-pg1-x531.google.com with SMTP id x37so2408767pga.1
        for <devicetree@vger.kernel.org>; Mon, 13 Mar 2023 06:14:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678713288;
        h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CY9AsorMV2lTcvatQ9gGcropbDgZAywplz6MLboUuMk=;
        b=QBhmDS77fsj958h+tFR+JDZAuuh7K3OUxbXpB0PEqA/T4+CpwrkZWHpd/GIClqiwLY
         wosv0Ue25eJkyE4u8BPVThrM1Emsp7iLtywrSA4kJIShuNszPXR6UhD4PcLIIQPi54D1
         ieDhb/YgvWv7g2/vKY/ocDW6F/ojCXzFbfJvzro7n10ee0DfjI2jCveA23IT7cQLfmCg
         eY5TLypxeL5SpgHR10GenaoP8zc77A7KVFk9G5nZIii0tfr3TtlbrBYs1lt9c06yKUDG
         dGm9Tdgllu+VfAqpY50wlg9vN82zugxLur0hbmXVLvNh/wT3nPskwgbIu+HAPhqZruYO
         njjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678713288;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CY9AsorMV2lTcvatQ9gGcropbDgZAywplz6MLboUuMk=;
        b=QpGE/4rcBU6lME1QwVuLMkwFeEczPJJptfBC6ktYwe3O79PHtZ/IBNCQNcxVGD+eMO
         vrEk/rWuVKwFh/lqR0mapaYm5uoMS2dhkLe2pWKrqPRNo9K4OnhbkmzHN7l2g3IxThim
         xQBCKG7Pw/+sOK9gh4hqaf7Pf5wfJ0iSkel4Op4fvJTmLaBFpk/OI+LQ5BSHeQMpzETV
         5KYpgjAVcuYSG8Cis1k5hpzXOYR3BNpurNB8RmvcxRpVsaq4v8Q67aE7OdBWkJNCgIKp
         Sy/JhqvzZTIpODRCWTKDdlJfDgnrGFQAYqZXzQc+fdFH8hGpk5TV+96csV1i7+pu1Gka
         4u4Q==
X-Gm-Message-State: AO0yUKXCPkLV6zjpXupi5ZrAoNu4IvbboC5eAla6xRprHix6ADwBws0V
        1lbD16Llsj5p/GASl5WFDAUdyGjuobciH80YRqI=
X-Google-Smtp-Source: AK7set/hmXJMNWNJ54kpFBHxolpd76wQ9LvM5JyK+MjQwPgtjXLlbEj/4nE2es46KexeM0cWgOdb1acD6vjmG4noq7o=
X-Received: by 2002:a62:1d41:0:b0:623:1450:a4a with SMTP id
 d62-20020a621d41000000b0062314500a4amr1838774pfd.6.1678713287819; Mon, 13 Mar
 2023 06:14:47 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6a21:3a82:b0:d4:c10a:ba0a with HTTP; Mon, 13 Mar 2023
 06:14:47 -0700 (PDT)
Reply-To: hitnodeby23@yahoo.com
From:   Hinda Itno Deby <diaboagifty@gmail.com>
Date:   Mon, 13 Mar 2023 06:14:47 -0700
Message-ID: <CAKiJAOGe5m3jP3JsUF_1WLKh_pX+hFz437PzXkng1r9EMUQFgA@mail.gmail.com>
Subject: Reply
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: Yes, score=7.3 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,FREEMAIL_REPLYTO,
        FREEMAIL_REPLYTO_END_DIGIT,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        UNDISC_FREEM,UNDISC_MONEY,URG_BIZ autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
        *      https://www.dnswl.org/, no trust
        *      [2607:f8b0:4864:20:0:0:0:531 listed in]
        [list.dnswl.org]
        *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
        *      [score: 0.5048]
        * -0.0 SPF_PASS SPF: sender matches SPF record
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [diaboagifty[at]gmail.com]
        *  0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
        *      digit
        *      [hitnodeby23[at]yahoo.com]
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        *  0.6 URG_BIZ Contains urgent matter
        *  2.9 UNDISC_FREEM Undisclosed recipients + freemail reply-to
        *  1.0 FREEMAIL_REPLYTO Reply-To/From or Reply-To/body contain
        *      different freemails
        *  2.0 UNDISC_MONEY Undisclosed recipients + money/fraud signs
X-Spam-Level: *******
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

-- 
Hello Dear

My name is Hinda Itno Deby Please I want us to discuss Urgent Business
Proposal, if you are interested kindly reply to me so i can give you
all the details.

Thanks and God Bless You.
Ms Hinda Itno Deby
