Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A59FC4B28B4
	for <lists+devicetree@lfdr.de>; Fri, 11 Feb 2022 16:06:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1351207AbiBKPGq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Feb 2022 10:06:46 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:55690 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240075AbiBKPGq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Feb 2022 10:06:46 -0500
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 13756131
        for <devicetree@vger.kernel.org>; Fri, 11 Feb 2022 07:06:45 -0800 (PST)
Received: by mail-wm1-x32f.google.com with SMTP id v129so5642750wme.2
        for <devicetree@vger.kernel.org>; Fri, 11 Feb 2022 07:06:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:reply-to:from:date:message-id:subject:to;
        bh=pSKuz9BJS/Qwel4yBJUKsJP++c1z8gtIosTtEbMtN5I=;
        b=Qn4phb+5pHLb/QDqndblJagf9MsOCWOshTRsuwdmm9NlXqlmLNgxG6LClfkrGaRcTw
         iO4MoJPTPa6hXRgKY7lyoqXKLmPtXouXFp54tDPCapBFTBUwodEtdHW3wf2TNtVepBKl
         D+JJmDN/WK06Z/q/M8Yq/svRnW6+kC3Xk/mNFY0EX3r1uK+RqXf6DjAJGk0RJERYIvi4
         cFEBkRBaf6zTjBwgGVxQyXaSEpSGfPHOB9aAQyTAF56JgfVnEMVIuIpGjS3nPBEqx0YR
         HkWPyq9lmihy8ih/VQjmPMNsyraz1RAl52MPgK4zQPr/CI5upBEkhhsPRTXEzWR2tE1d
         yGIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to;
        bh=pSKuz9BJS/Qwel4yBJUKsJP++c1z8gtIosTtEbMtN5I=;
        b=XuYWcyB1bEsVZes34RWjTnqwO8gf8gSO2yVhr8boatCkgop2nxZhl8/SajSdAKU1I6
         F4HXlTgAzGUiWZX14zAa68AMcgmW3MpRxdqBzh3Spf1l+GfQn2x0yvwW2a8oIZ3VqtKm
         oGgS4/zMKTQig1VCim1KQmn9WU8CesjY70l+rsOip9QFHjgNjUvqN8fHuIkDgxQoxJ1c
         OvNDV2gT2njFJnesVz6zGwHcdmo0wMDxvRoQlQFAUHbn4+W/O+bydoI6yPEhYnmCfrzt
         o6Jd4QZRxJIxgpABzqwvkhAez9YWRSR95PA5SCvMbUzUjzv/+qWIHvM6j89bUq0NV6o4
         RsIg==
X-Gm-Message-State: AOAM530DrwbktjhLA/QV0AYw2jVFnBLXZoueLDE31sy6LPvAhKhz+w7j
        y+NeKvmrt7v4Sbp6H68n3Ri17nc/pSiENeMquFg=
X-Google-Smtp-Source: ABdhPJxsC+9C/lolMstM9j/H99pwU+Sz1RpFKxGxp6JjY4ZnawYuwXiPdSkX0kikt5Y78xF5Q2LhfRYhFCvNpKOfBIE=
X-Received: by 2002:a7b:ce13:: with SMTP id m19mr625449wmc.146.1644592003651;
 Fri, 11 Feb 2022 07:06:43 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6000:1687:0:0:0:0 with HTTP; Fri, 11 Feb 2022 07:06:43
 -0800 (PST)
Reply-To: davidnelson7702626@gmail.com
From:   dedi mark <dedi788877@gmail.com>
Date:   Fri, 11 Feb 2022 16:06:43 +0100
Message-ID: <CAF3O_y3oYryyuu5cmOLP3ct6XLnDeV3cYQJmY6C7OJ31b8HRVw@mail.gmail.com>
Subject: 
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=4.2 required=5.0 tests=BAYES_05,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,FREEMAIL_REPLYTO,FREEMAIL_REPLYTO_END_DIGIT,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        UNDISC_FREEM autolearn=no autolearn_force=no version=3.4.6
X-Spam-Level: ****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello friend, I want to send money to you to enable me invest in your
country get back to me if you are interested.
