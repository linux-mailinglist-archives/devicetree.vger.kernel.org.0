Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 351F56ECA0B
	for <lists+devicetree@lfdr.de>; Mon, 24 Apr 2023 12:18:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231523AbjDXKSb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 Apr 2023 06:18:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43762 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231600AbjDXKS0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 24 Apr 2023 06:18:26 -0400
Received: from mail-qk1-x744.google.com (mail-qk1-x744.google.com [IPv6:2607:f8b0:4864:20::744])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E9BDA3586
        for <devicetree@vger.kernel.org>; Mon, 24 Apr 2023 03:18:20 -0700 (PDT)
Received: by mail-qk1-x744.google.com with SMTP id af79cd13be357-74e0180b7d3so204254885a.2
        for <devicetree@vger.kernel.org>; Mon, 24 Apr 2023 03:18:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682331500; x=1684923500;
        h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dQlu0Oc2Q0nPMBCNq5iTPUZpwrRZlsMdPt2zjra8+VI=;
        b=qCyjvAXqXs1NWhsOZbfXXSzllFFXJnYzGlyMmYzQqg07nOoxaIkS3I8TQ0ChO+Gc5z
         8bFEJMdfsNOjMnooo1J5VLFyYEYH0bM7DMH9fAReArGBJpcEkJSEr0tEcRu3sWCGXz9h
         3r8laHJp+0Z4WCearpqZm+GNSymM5KQrw+aeqRGLcB4C7ldzmLkDFn2t1vR1F5mceGQH
         vnZsiDtXPpKP9eRxc3uMMhkpwe4e8jdCbf9Lje+dHRb92g1zKcKSJr8pjH4kuqmtwRhr
         7wBZxi7xnzI/tuqrZexqZw3Xk/afa+HqS5Lrq5XrPBslP0efrE3Wx6JDL+IR9Grf/QnY
         UVnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682331500; x=1684923500;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dQlu0Oc2Q0nPMBCNq5iTPUZpwrRZlsMdPt2zjra8+VI=;
        b=gidtuCA1RmgIQCtGJ8PY09Km45ZU5wxed8PlOuIGHpm346yrmTa59nk5RXY1nxp2gv
         Yapj2vegqUeDrUgM6V68ngIYRY9ZE2sK39ocqzZ/VXf6PgX9wLwyFzXD0dj4V9UFRkOT
         uHfb+Ba6x/jWfPsK8ok3VPdA8EIsBHWuC/3TZxAFA5WE/CwGeKqn310DvhJYtkYqEHnN
         ULwClbmOrJx0sbD9EHFbUBl6VuZiMKYBPc7c78DV5UoUAVRPxQGXCHRc6NqbZPXN1DHk
         YY2VLLZbGqT01Ou5TE2BHUz0bhvHqNIzZEEXoholjlYuMOu2lWMkH7gGotzyIbmpCRNw
         tKew==
X-Gm-Message-State: AAQBX9ebcfKKhmFQFoJ8Hjxac+BhMnLc7lcaFCrpMiomy6rgoZAiYg3m
        Wv+QG9JExiSmADWWenRjd4v6/UBL3AFj7u4wWkM=
X-Google-Smtp-Source: AKy350aohk47lZ3nxgaKCTvU1JGiLpeLLtjKiFRVCAxAx4W2CV7FZZuRQxfzqfuTroDXZ4ZdpdvGHeKqkV273hAsfwI=
X-Received: by 2002:a05:6214:5005:b0:5ef:40ff:7d75 with SMTP id
 jo5-20020a056214500500b005ef40ff7d75mr21625106qvb.11.1682331500022; Mon, 24
 Apr 2023 03:18:20 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a0c:f210:0:b0:5c4:957b:83cc with HTTP; Mon, 24 Apr 2023
 03:18:19 -0700 (PDT)
Reply-To: regionalmanager.mariam@hotmail.com
From:   Mariam Kouame <mariamkouame1993@gmail.com>
Date:   Mon, 24 Apr 2023 03:18:19 -0700
Message-ID: <CAJF_a36iBTG7JkHEz5UfVOHJd7JK-7dKFiOcFnGhYNEswBWw4Q@mail.gmail.com>
Subject: from mariam kouame
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=3.4 required=5.0 tests=BAYES_05,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,FREEMAIL_REPLYTO,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE,UNDISC_FREEM autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Level: ***
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Dear,

Please grant me permission to share a very crucial discussion with
you. I am looking forward to hearing from you at your earliest
convenience.

Mrs. Mariam Kouame
