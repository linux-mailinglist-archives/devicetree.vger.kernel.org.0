Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A712152490B
	for <lists+devicetree@lfdr.de>; Thu, 12 May 2022 11:35:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1351682AbiELJfb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 May 2022 05:35:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53878 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347965AbiELJfa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 12 May 2022 05:35:30 -0400
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A6BE269B6E
        for <devicetree@vger.kernel.org>; Thu, 12 May 2022 02:35:28 -0700 (PDT)
Received: by mail-ed1-x532.google.com with SMTP id k27so5537692edk.4
        for <devicetree@vger.kernel.org>; Thu, 12 May 2022 02:35:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:reply-to:from:date:message-id:subject:to;
        bh=B9r6p7EN07mDvhfVo0cLbZ8Pxn1tf5RBuT3NfjO0k5U=;
        b=gIAzvAdCgrBKbGDbVeZ9nd+GHGFktf20DnhI7aWA0QSF4/sqIogAy14FjIFzzce66W
         JO2ZtVIfAP+ZhT/vSttTG1Xei6irUJ0IEg8k9ImhvqbmGPWy/uAPoa+bPrjKY/+xUEJB
         6pYmelbGUqDuoVzxbmeAi1Oj4SXnHvOH96ManO3X7YqiaJFOzhTBVczvSXknJWE/iO+R
         WVdaB/FAYU2x9u1fjnGCQou32q3Kp8KiSASwM85tjjDPKJq9+8RtNBKiPdx7/bFQnlkM
         a8HhGKyfV3yC43POFDVgQPgUcVLNW1toxd9S147DZ2Nl2eCHq9hnTiqSq6HzSYXIBXmM
         lohw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to;
        bh=B9r6p7EN07mDvhfVo0cLbZ8Pxn1tf5RBuT3NfjO0k5U=;
        b=hM2dtz/l33tsUqWtPq8fu/eIqsEb36VusrBqFbm7o8raHXW6LPLmOUGJ7guO/4QehU
         BPNwN1VEk2SB6NfivMGlydvpclVqzRMcd7hRm9IX4hV3S65PZyDSFBi51rcomXvCAEHI
         W2/jycmsKa4OhVFfx9YQ2N66hyec/LYj4gQoactDsvFWyF62nhqI/99dmNkJ+XSvO+Cp
         jlCsLg3rIxctuQgbTPMuJd2n37Kgq4PqutuULthOyaSBWMuamLikHXd26vzqK7qDn+Pj
         +r5Bur1wAKj+FZW1Xe7sNt1YXY/+LV01swBS/k7JpoEvf3nbiwRk25QEAMoftsZ9cdRZ
         j/CQ==
X-Gm-Message-State: AOAM532dp66JAHBl8FZFFJ4ZW0PAIHaCMcMDAibZl44DEJFnrSXwBxA/
        UddU6MoWnqPMTZeBRLqvyOkMwyaZ18VJCd1q5SI=
X-Google-Smtp-Source: ABdhPJyAPzARzT0IQ8zYSPkPwpFiKIGFpb5ZrN+uMTZPO4a6xFk3KvKaK/Tsf+UthCA1Ruu3fUBrtGHR42YfUGfeJ0k=
X-Received: by 2002:a05:6402:206b:b0:42a:3622:af50 with SMTP id
 bd11-20020a056402206b00b0042a3622af50mr3107675edb.236.1652348127029; Thu, 12
 May 2022 02:35:27 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6f02:ca19:b0:1b:d6eb:5402 with HTTP; Thu, 12 May 2022
 02:35:26 -0700 (PDT)
Reply-To: sj7373313@gmail.com
From:   "Mis.Sandra Johnson." <bassiroualfs742@gmail.com>
Date:   Thu, 12 May 2022 10:35:26 +0100
Message-ID: <CAMqHDfh9MgjP6M7Ra+RhrCHCq0r049BB78F3XxyQGvCwNNcZCA@mail.gmail.com>
Subject: Sandra J.
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: Yes, score=5.6 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,FREEMAIL_REPLYTO,FREEMAIL_REPLYTO_END_DIGIT,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        UNDISC_FREEM autolearn=no autolearn_force=no version=3.4.6
X-Spam-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
        *      https://www.dnswl.org/, no trust
        *      [2a00:1450:4864:20:0:0:0:532 listed in]
        [list.dnswl.org]
        *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
        *      [score: 0.4995]
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [bassiroualfs742[at]gmail.com]
        *  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
        *       in digit
        *      [bassiroualfs742[at]gmail.com]
        * -0.0 SPF_PASS SPF: sender matches SPF record
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        *  0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
        *      digit
        *      [sj7373313[at]gmail.com]
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        * -0.0 T_SCC_BODY_TEXT_LINE No description available.
        *  3.5 UNDISC_FREEM Undisclosed recipients + freemail reply-to
        *  1.0 FREEMAIL_REPLYTO Reply-To/From or Reply-To/body contain
        *      different freemails
X-Spam-Level: *****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

HI,
Good day.
Kindly confirm to me if this is your correct email Address and get
back to me for our interest.
Sincerely,
Sandra J.
