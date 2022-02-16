Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 62DD44B8F7A
	for <lists+devicetree@lfdr.de>; Wed, 16 Feb 2022 18:41:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237253AbiBPRlx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Feb 2022 12:41:53 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:36694 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236100AbiBPRlw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Feb 2022 12:41:52 -0500
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 499628F998
        for <devicetree@vger.kernel.org>; Wed, 16 Feb 2022 09:41:39 -0800 (PST)
Received: by mail-ej1-x632.google.com with SMTP id gb39so1007277ejc.1
        for <devicetree@vger.kernel.org>; Wed, 16 Feb 2022 09:41:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:reply-to:from:date:message-id:subject:to;
        bh=djGKhvUF8lAsiTuKU98fE1SgBbCGkJsAmy7BmMcoar8=;
        b=UP8H3zyMYCdYT/Sbbg7irkfEZacdDXjpdeXWnjeqJjYeDkYOLgqlgGTo+MxOWN1xl/
         4LH8IHuP+ecQgrklqMYrQj3x4ypcRpHk9FwNrELn8tBDBf2qn383vfslQokVJPgJD9nk
         bgekFn5KptFsd+v32SQdwLeOzcR7FA7AcNzWmvI/JMXnH5Ahq+6ZGLt/6Q1/z4MTutxf
         NM4B2BKFbw1UlFEOiTqwMiqWq8NpGYeFLIjeW1qWLZiDzZ8/ozbGGfChaKctc1L38eHr
         /LF6NKe5Aug/po8Wbk29VJPHddAmp4oBToZyy0KrCVwE/KfEFHo7ozweQ1mEqjRiNYdU
         4acA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to;
        bh=djGKhvUF8lAsiTuKU98fE1SgBbCGkJsAmy7BmMcoar8=;
        b=3H5vhdC+1om6sTAAEVr6+sZRiQkhe4VuGKq8ye5AMt106RdnTJMZzTc2d4b1LawwRx
         EdiqUEXTJKaM+TgU6FS4FoQUZEQaKu7EhRl1+/b3MlZ0X0s+5ULJM79m0x0cT7+CYSKi
         A3lRXcnfEWdNhyUPnIcToeSzzqwkhLp4dYJWCbKNFOmtUDXd7kpxtddtFvbxbzWWBhiR
         SMk+ieGMTFS8Bh9fDj3vx3ph9BC9a6WLLp/12Z0OyRH6NPDElMVvveBjgSYtpIUXV5Ui
         uFLxwvLpK1YzH1Bk60zNZfD+Cp3m2TVF/naCCyRRVx1YmjQNxzzEJ6wwixqRIwN9SweE
         R59g==
X-Gm-Message-State: AOAM530+E6j6bIIWA9p15qpIRN4UVBXjBTnU8Ybhqi+rml4ySPCEE8hh
        WegDeZwwaGL66Z0Ww790I5rwkxPa7k7IMlDT3H4=
X-Google-Smtp-Source: ABdhPJxtr70YZtgGKJ0Jk9uDCbCNiaoFn3sAdj2suY+0XgmUE4W4DuRYahJqSlr5J7N39j/0AZK4omla72+IrbiaYsE=
X-Received: by 2002:a17:907:138e:b0:6cc:f1aa:a8fe with SMTP id
 vs14-20020a170907138e00b006ccf1aaa8femr3063587ejb.25.1645033297922; Wed, 16
 Feb 2022 09:41:37 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ab4:a5c9:0:0:0:0:0 with HTTP; Wed, 16 Feb 2022 09:41:37
 -0800 (PST)
Reply-To: ukofficeimf@gmail.com
From:   IMF UkOffice <jamesikpe6@gmail.com>
Date:   Wed, 16 Feb 2022 09:41:37 -0800
Message-ID: <CADDnvagN4wBZc9az66D15g3a4_2rxrqmgGoc6+4TWFhcDyM_JQ@mail.gmail.com>
Subject: Q
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: Yes, score=5.3 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,FREEMAIL_REPLYTO,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE,UNDISC_FREEM autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
        *      https://www.dnswl.org/, no trust
        *      [2a00:1450:4864:20:0:0:0:632 listed in]
        [list.dnswl.org]
        *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
        *      [score: 0.4323]
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        * -0.0 SPF_PASS SPF: sender matches SPF record
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [jamesikpe6[at]gmail.com]
        *  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
        *       in digit
        *      [jamesikpe6[at]gmail.com]
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
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

-- 
Good Afternoon from UK,
How are you? we guess you're well, Our office has sent you a message
last week, did you read our notice? get back to us upon the receipt of
this mail.
Thank You,
Mr. Hennager James Craig
IMF Office London United Kingdom
