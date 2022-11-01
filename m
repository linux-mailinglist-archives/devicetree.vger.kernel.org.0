Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 18C786142ED
	for <lists+devicetree@lfdr.de>; Tue,  1 Nov 2022 02:54:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229667AbiKAByn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Oct 2022 21:54:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40714 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229479AbiKABym (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Oct 2022 21:54:42 -0400
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com [IPv6:2607:f8b0:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 36A671117C
        for <devicetree@vger.kernel.org>; Mon, 31 Oct 2022 18:54:42 -0700 (PDT)
Received: by mail-pf1-x443.google.com with SMTP id d10so12232327pfh.6
        for <devicetree@vger.kernel.org>; Mon, 31 Oct 2022 18:54:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=4Nyr+8vXAObvcvrLwnI+C2J6LtRrVXt+n6mJE22Uf/Y=;
        b=aNGhxo99VjiaCKfW8tJ737JilzCT5WHwJbFV6EeuQyitK1x2rv4+Iihtle8Z1f6gYA
         kfOcUOzbR5h3iPzpXXvMKmzjlvPr6kIn0WZja9VmJ2Db6+k5xFLS1uXAk+su3gU+eUS6
         FOO6nwr0kUofJY/iMU/gpg2j7oPHq0xyiE0w1Cgv6cvbIWvkAP7fjndvDUosnnNxQ9fL
         UGeydg/kE3wVFvke8Cj+DlNrlu8cxaxMydMnEcCFwTWD2mc6EqGH+7xdK98u2KFWRlkz
         /KBTCDEktEg6CJkEFYyH9cCeFcXvgsTSox02IBUOm8vMCxoUoFRTVI+4KYhit2oL7CLW
         dPdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4Nyr+8vXAObvcvrLwnI+C2J6LtRrVXt+n6mJE22Uf/Y=;
        b=70/S0FQwo8NJ3/SnV0JyUiJUgcRI0fSzgcjK4QAHbdLgto9a2CgAlxGa3CuCmn6xbI
         pZdfDyiR2oEUiZgeLNk3HQRk53dK8OGHM2V9UFrSYLhx9/CnCvrvS47XoM6rI9ik6ac3
         U5A25UwiY4N311cNYj6FhBhBcB8SHpms4jb5lCVPToFkz1f0I2CwbRcCvreEEQZ4uT5Y
         Iz723I9GyIfzVfhZAbDMtuZnNDVd+sw8v7WhuMNu9j/luH4Cn8wOiYNHdXQKTxyG8iV5
         lr/7zVFIZlHfI1Llsj5VoE3qqZ/HuGrE2leMIUPmqoofAsIccgYBXG7w9+qbYgK+AiJ9
         wcUA==
X-Gm-Message-State: ACrzQf0e6mp0Qi8+E41jRfnIYVK+Mk+42NJXdVP6ZDVydTtnamrPyNWg
        48yoj6JQL21baNrHI/r+jItJGNKbYGM8FF1kGCg=
X-Google-Smtp-Source: AMsMyM4mCM+zv9t4DoD3b9KlKjrdWz39FULdNmxfpgMXO6VERGOP+Ot90j3Ia5BjE6GrPqsXQVgTZ2rg8noB9H9CdJE=
X-Received: by 2002:a63:3206:0:b0:46f:8979:30d5 with SMTP id
 y6-20020a633206000000b0046f897930d5mr12055106pgy.505.1667267681512; Mon, 31
 Oct 2022 18:54:41 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a17:903:22c7:b0:186:60a8:6595 with HTTP; Mon, 31 Oct 2022
 18:54:40 -0700 (PDT)
Reply-To: luciadani18@gamil.com
From:   Attention Please <macycooper6@gmail.com>
Date:   Mon, 31 Oct 2022 18:54:40 -0700
Message-ID: <CA+FV2s0NdfCEH2sLhNTDeFwohfQV96e-Bu7S3A4GCjKveCWZSw@mail.gmail.com>
Subject: Hello,
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=4.1 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,LOTS_OF_MONEY,MILLION_HUNDRED,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,UNDISC_MONEY autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Level: ****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

To Whom It May Concern,

How are you doing? If you have a minute I would like to discuss a
vital proposal with you for your kind consideration. And I am Sorry
for emphasizing your email and your privacy here online because we
haven't met before,

I am Madam Lucia Daniel, I am suffering for health condition for the
past 8 years, before i go for my last surgery i have a proposal for
you to help the Less-privileged, I have in my possession the sum of
(Eight Million Five Hundred Thousand Dollars) it belongs to my late
husband, and its save in the bank, don=E2=80=99t be afraid for expenses any
fee i will pay, I just want you to stand as my trustee and help the
Less-privileged once you received the fund,  if you are interested
Kindly get back to me for more information and procedure.

I have my reason for making this decision.
Thank you and please stay safe.

Warm Regards,
Madam Lucia.
