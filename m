Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 680D365CCC9
	for <lists+devicetree@lfdr.de>; Wed,  4 Jan 2023 07:09:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233321AbjADGI6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 Jan 2023 01:08:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37018 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233290AbjADGIx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 Jan 2023 01:08:53 -0500
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com [IPv6:2607:f8b0:4864:20::102e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A9F4113EA4
        for <devicetree@vger.kernel.org>; Tue,  3 Jan 2023 22:08:52 -0800 (PST)
Received: by mail-pj1-x102e.google.com with SMTP id v13-20020a17090a6b0d00b00219c3be9830so33311888pjj.4
        for <devicetree@vger.kernel.org>; Tue, 03 Jan 2023 22:08:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:sender:reply-to:mime-version:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Sm2IrX2as+k9LNhXBii+2EPLTtwp8Q7bZRIteVKR48Y=;
        b=HPAz2+/t8yjEuGMSUy2TG6eVwd3w3AUgKlGNoueHqcKP+A77dytY2nb4zQvcLatrrY
         xUikA7FW0x8vPp+INcmOSZewFhfXk98EospJ8OU1CDuvkI1ueWuzgVLr2pYWSfsYuPlw
         UMvsPb6+ve1dJCEAWLPD1e+tyJfJ+GbgUSwuNaauWGr2NvUZRmds6qEQycmhWCsxe9Ex
         bIm+ZHfCREXP/Is6oBoTjSTLuZ/aQ54c7N18F8MbKEcf+8DYSUaheb3di4Sol3QAWGC5
         LUcvAIUJi1gbJfbaJIJKed0nye7Z3JTszVCM9EDF9wbiOTnL7T2FNCKq/PU4QSSBtFJ7
         LoQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:sender:reply-to:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Sm2IrX2as+k9LNhXBii+2EPLTtwp8Q7bZRIteVKR48Y=;
        b=Leiy1ZtE7iW2Kn+gHudC95zC7MTRoFwDirxKwzZNRdwtSIqVoVj3XnOB2/5ZBKnxlF
         dWA3v5ifS8yyBjlBkdwgTeuoTr7Ao7nSxdaSuorIY50G80z6UEjYcWSImzXL6zJx2lqJ
         ICuvg8hkvnqRyD923Yjdy+cGLLeYYbDL8AgoA8CubAorOuWioiAfIe7WM8QyJOFgCXAe
         yEOpJs4Gl5uTI6bX9F2g9cpUIWBq53biQ53OH9KMlimFJ7+iGL9KXOOfB3M5eBTe+ytE
         3LSuVjQThee7Fm6Un1ivvv0JjEa2DRRDlFJTkrhq76z1wZE9kTfSuTFAyEmEUJP0TFaH
         SuYw==
X-Gm-Message-State: AFqh2kq5JsR/yS/Eg9v/zuMg1lr26whlmBW2SM7vsEwycGx0FhdAQwo3
        sbXI1/tPLn4EmiB9cL9v5IKlkgWadiTSNeV/Nsk=
X-Google-Smtp-Source: AMrXdXtexIAxZHAvzFl5VU8Z5dOIbpRcM1XA2dZPDHf22Kj5XOEbaXXOWJAkmrcCYavwiDkwsj11I3X89fP0ODEimfA=
X-Received: by 2002:a17:90b:3d06:b0:226:5a18:bde1 with SMTP id
 pt6-20020a17090b3d0600b002265a18bde1mr1288447pjb.82.1672812531921; Tue, 03
 Jan 2023 22:08:51 -0800 (PST)
MIME-Version: 1.0
Reply-To: mrs.maryander1947@gmail.com
Sender: mariluda1972@gmail.com
Received: by 2002:a05:7301:3806:b0:96:257e:a2b6 with HTTP; Tue, 3 Jan 2023
 22:08:51 -0800 (PST)
From:   Mrs Mary Anderson <amrsmary16@gmail.com>
Date:   Wed, 4 Jan 2023 06:08:51 +0000
X-Google-Sender-Auth: pKE8ka4W_Opn_EJ0hpoSGRlzU0s
Message-ID: <CANgCvtCHGjv7CrVniCzOEBchbU13Awv3oS0U=LuQyCCBsQNHEA@mail.gmail.com>
Subject: Dear Beloved,
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: Yes, score=7.2 required=5.0 tests=BAYES_60,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,FREEMAIL_REPLYTO,FREEMAIL_REPLYTO_END_DIGIT,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_HK_NAME_FM_MR_MRS,
        UNDISC_FREEM,UNDISC_MONEY autolearn=no autolearn_force=no version=3.4.6
X-Spam-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
        *      https://www.dnswl.org/, no trust
        *      [2607:f8b0:4864:20:0:0:0:102e listed in]
        [list.dnswl.org]
        *  1.5 BAYES_60 BODY: Bayes spam probability is 60 to 80%
        *      [score: 0.6954]
        * -0.0 SPF_PASS SPF: sender matches SPF record
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        *  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
        *       in digit
        *      [mariluda1972[at]gmail.com]
        *  0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
        *      digit
        *      [mrs.maryander1947[at]gmail.com]
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [mariluda1972[at]gmail.com]
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        *  0.0 T_HK_NAME_FM_MR_MRS No description available.
        *  2.7 UNDISC_FREEM Undisclosed recipients + freemail reply-to
        *  1.0 FREEMAIL_REPLYTO Reply-To/From or Reply-To/body contain
        *      different freemails
        *  1.7 UNDISC_MONEY Undisclosed recipients + money/fraud signs
X-Spam-Level: *******
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello,

Dear Beloved,

I am Mrs. Mary Anderson, It is understandable that you may be a bit
apprehensive because you do not know me, I found your email address
from a Human resources database and decided to contact you. I would
love to employ you into my charity work, I am ready to donate some
money to you to carry on the Charity work in your country. Please
reply so that i will give you further details and tell you about
myself.

Yours Sincerely
Mrs. Mary Anderson
