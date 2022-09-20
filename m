Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 59C1E5BE560
	for <lists+devicetree@lfdr.de>; Tue, 20 Sep 2022 14:13:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230333AbiITMMs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Sep 2022 08:12:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48820 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230388AbiITMMl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Sep 2022 08:12:41 -0400
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 987386FA33
        for <devicetree@vger.kernel.org>; Tue, 20 Sep 2022 05:12:35 -0700 (PDT)
Received: by mail-lf1-x133.google.com with SMTP id s6so3419155lfo.7
        for <devicetree@vger.kernel.org>; Tue, 20 Sep 2022 05:12:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
         :subject:date;
        bh=vdWAHjdoDAmLhBFl81ma2VsbcrtX3Qb3i7sj9wdWLyo=;
        b=foepSG8UCP6CF4ZmpYh74PMWbSw8uK68PL52qOGo5c5nlkDBTQiZ3IgupBz+qIU9Xh
         JpJSP3uv5PzOmin7QNH0b08CHwN24npGAt6L5c8MtPmxmALtJGS384P5Tn5rQyIUr5fR
         nfz1T/yoJfIzW3tFf0k9fdtCGUTeKKx1ieE0GgHnKz7tIElF6/zHBe1sbR8LJlpmpDYK
         I7NW2aQkzTNMeqESj8q3WsuQFQIaYAg6PuLLnYVBCHB64zWC8XkLIE1dVf4fC1+W4mcZ
         NAGGpzs06vF4G6cTcMkf6JVc2iQ2xlh+CTbuLWJBK0Z2Q9r+BXgUCibthF6ZyhC7e2sr
         lSqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :x-gm-message-state:from:to:cc:subject:date;
        bh=vdWAHjdoDAmLhBFl81ma2VsbcrtX3Qb3i7sj9wdWLyo=;
        b=1XAwTr0AnAzHNEJzs87xhgLQR3hT/DzgNObU2M1ikUVuSL1N0q2DVcCbE69avfLiZ0
         DbjKsPvl7ISehuZJNiHLBqRNJqnxrE5PUqE3ghSA52TUTa3y7R8i3w30/ustZrHQ7w56
         aONOWxoAquv2gWKNrQoK6/yM0YTymZp39zxq21DOeNpzGIXyrhNqr5mZQ4RhyrsRkASz
         rpG3pp4tG9sDsU1hzK2LeN1bPNbaoDTfuyTTjf9xqUzGs4LI1Bz82hzK8njyVw0ih1kl
         /41X9cTnOrvl7OLMkdqqkkNwisffvf8fFOEej4xWvRTUel87+IunLo3TvCZHDlvpXUV/
         B2lA==
X-Gm-Message-State: ACrzQf1XSwD3g1yz94QhAPNjxD4fbbnWaDlww+o2YXI5XxwA/d6gjiOd
        6Wc/M6mDPX7EqjrGJk2Uzs23qlQ1l8mWYVxz3xY=
X-Google-Smtp-Source: AMsMyM53YEmxYYIMG9B6yL0moY+ngxn8mzjxABUhso2HdYYav4cow9fUohWPM0IGBEvohTX1wPaA+Hsb5PxYtY0cJcY=
X-Received: by 2002:a05:6512:304d:b0:498:9d7b:43f with SMTP id
 b13-20020a056512304d00b004989d7b043fmr7644971lfb.48.1663675953281; Tue, 20
 Sep 2022 05:12:33 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6504:1086:b0:1e7:289d:57e0 with HTTP; Tue, 20 Sep 2022
 05:12:30 -0700 (PDT)
Reply-To: a16udu@gmail.com
From:   audu bello <eri121ce@gmail.com>
Date:   Tue, 20 Sep 2022 05:12:30 -0700
Message-ID: <CAPYmmOFbZ_xS2j6ifAeOqvrci5nh0ZH7w5YpBq_zYZXFkpUbWA@mail.gmail.com>
Subject: Hey there
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=4.7 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,FREEMAIL_REPLYTO,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,UNDISC_FREEM autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Level: ****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hey there,
Could you help me received 4.2 million for Charity Projects in your country?
