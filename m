Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B07CA4D0DD1
	for <lists+devicetree@lfdr.de>; Tue,  8 Mar 2022 03:04:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238140AbiCHCFq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Mar 2022 21:05:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34840 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233419AbiCHCFp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Mar 2022 21:05:45 -0500
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D74A337A91
        for <devicetree@vger.kernel.org>; Mon,  7 Mar 2022 18:04:49 -0800 (PST)
Received: by mail-ej1-x635.google.com with SMTP id d10so35923250eje.10
        for <devicetree@vger.kernel.org>; Mon, 07 Mar 2022 18:04:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:reply-to:from:date:message-id:subject:to;
        bh=5+oocItIt02OkdY+m5813Z7pgg3BMDr/tC5w+npdJZg=;
        b=ZW4WxSWvlPpd7aNaIKs89/QxbI5rDV/3bd8dAb/3Q0TrIwzzlu0cHhteumycb1ho2t
         LmYmHepnCW43Clq6J8/vzMuPL5pfRuJ9lOU/Vnm8DO3eM/Zn4VJHWQzKpC+UW6J2ihFp
         ftPKnlWO00H5rKvTIGBGwL29ZJesVm3hd7G8M/8rLJMPeufqOU8zJXfmTOwL5kptnDUv
         NIrFSV3SuNw2wpRoOD66uu7lax8jIZgDLjXStylyW1SsLOpqIvfV6GV4eZITd7i3Uj7h
         qXISwM6uRArOF3Kme+P16ZauuKLA1KM9GNfZXo3mEOri+9G/hyGujHfY8WsVG1kaF0Gg
         CIWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to;
        bh=5+oocItIt02OkdY+m5813Z7pgg3BMDr/tC5w+npdJZg=;
        b=3GSCI28ItS/i6xFTmN4ls3AW+eV5lE6jSPJOoDStSJ7GS5Vr0OVvIeuYXGYtGEmAMj
         mlLk/FntIJ6e/SxFHfMCPu8p6hJFv5Tl0bpmlafhXN637dbAlrZqbb85vk3dP6INOQhl
         f8fGc3KPGErkKD55tDUe1zyku+Lb8i3SfwHsiOqlWznMR3zokzxEErBkbfVqK+L5MYrL
         ItJHrWuXylxU8L1VKuZp5wGJ0kF+i0YRSZZ7u25+DkiKN25d4YNKWanid2IRElR9JgfZ
         2k+C4BcfspBqVyKoLwUtKXK1yMtNRbRJu794e9Qd2aGEhnPWvXDC071n0TN5abk9GgbS
         O+/Q==
X-Gm-Message-State: AOAM533HF+T0R6LDnB8OY4l9S6b4ky7uozFpjX6i1Ecbt2JIWE+7tkYf
        DbMed9MdBsWZyv1cu7biBWv+FV0xJTD12xmIZrc=
X-Google-Smtp-Source: ABdhPJz90hyIVYYFelvIBQ+OC8kAaXj7QFM15WfxxndIauPy0CltebewlB185oe1AmUUL6A2b4y/jeGY2ixYuNeScBQ=
X-Received: by 2002:a17:906:b1d0:b0:6cf:7f39:50e0 with SMTP id
 bv16-20020a170906b1d000b006cf7f3950e0mr11690306ejb.760.1646705088493; Mon, 07
 Mar 2022 18:04:48 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a54:38c1:0:0:0:0:0 with HTTP; Mon, 7 Mar 2022 18:04:47 -0800 (PST)
Reply-To: fatibaro01@yahoo.com
From:   Fatimah Baro <imanosose@gmail.com>
Date:   Tue, 8 Mar 2022 03:04:48 +0100
Message-ID: <CAFEyOE6Wj+AtEUqfPQGx+_u=UiM013Qxbb=u14aPA0bbMzggAQ@mail.gmail.com>
Subject: Business invitation
To:     imanosose <imanosose@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: Yes, score=5.3 required=5.0 tests=ADVANCE_FEE_3_NEW,BAYES_50,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        FREEMAIL_REPLYTO,FREEMAIL_REPLYTO_END_DIGIT,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
        *      https://www.dnswl.org/, no trust
        *      [2a00:1450:4864:20:0:0:0:635 listed in]
        [list.dnswl.org]
        *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
        *      [score: 0.4369]
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [imanosose[at]gmail.com]
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        * -0.0 SPF_PASS SPF: sender matches SPF record
        *  0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
        *      digit
        *      [fatibaro01[at]yahoo.com]
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        * -0.0 T_SCC_BODY_TEXT_LINE No description available.
        *  1.0 FREEMAIL_REPLYTO Reply-To/From or Reply-To/body contain
        *      different freemails
        *  3.5 ADVANCE_FEE_3_NEW Appears to be advance fee fraud (Nigerian
        *      419)
X-Spam-Level: *****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Greetings from Burkina Faso,
I need you to stand as my foreign partner for investment in your
country. Please reply immediately if you are interested, so that I can
give you more information.
Fatimah Baro
