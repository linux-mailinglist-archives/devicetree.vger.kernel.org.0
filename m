Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C110D526BF1
	for <lists+devicetree@lfdr.de>; Fri, 13 May 2022 22:54:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1384567AbiEMUyD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 May 2022 16:54:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57650 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1384387AbiEMUyC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 13 May 2022 16:54:02 -0400
Received: from mail-yw1-x112c.google.com (mail-yw1-x112c.google.com [IPv6:2607:f8b0:4864:20::112c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 207AD2C666
        for <devicetree@vger.kernel.org>; Fri, 13 May 2022 13:54:01 -0700 (PDT)
Received: by mail-yw1-x112c.google.com with SMTP id 00721157ae682-2f7d621d1caso102007247b3.11
        for <devicetree@vger.kernel.org>; Fri, 13 May 2022 13:54:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=QSjouBq1hkSPs3CGhNm0zY6/5FKoqgQOU3DpZD6z5pQ=;
        b=taQnrTu08fAuBevrb/1K2/eCT8Kgol6/wYE8edLu3Y81qXPvEvDctcBPceQwCKjH1a
         kDBsvDFXA5Dc3rkMd2Q2eOcLiKsdVM5dBox5U5OcgS+w0b9fLnM1W/r8X2vsna4jn6iD
         uDxRzug8JNRNYyWHGjPLDz8QYDYgZ69xBcHpMByu+I4XYpRj3JvqVRKnlvNga847KTsA
         /TICtVI7EQnOT4XBIMuCjWX+XOXhZdcdWjmG39F3zcVOBQM2qBnc6rgVKSrIzX4fBVa3
         wTXg/JUNNMWhz+W+nMOzxYI143vDymqBdJTPJeyzwVXQVZDG4axQFt1QWepPMishMUTm
         WMzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=QSjouBq1hkSPs3CGhNm0zY6/5FKoqgQOU3DpZD6z5pQ=;
        b=fXgXpWyw8MlqmLEg43kAg9Ia8nJzve2x0gy/pFRWA45rutZhANWblToE9a3iMm/ZpQ
         zDdLw/P40Wbc0+3hn7Qd4xpe7bpgvQ60sjqpsA41GA7v6HhFUlBEpX1K1WllgtLoBZkJ
         nRZU19jnjn4aSyQVFgymR7UjhLMPdxMwQS1lBm0hl8mTZFCH4oj0nG9OWeP6Cyz2n2RC
         nC67+LpnspXN2ykdqSEttp+XXPGHm0c9onE8qa2BcY5yh2GIBzpDELlHIHOlcJRM3Aej
         fqoLVa7EyIPyjE8eeBooGSDqDgQh+A4H4UK/VVXj/1Rbiqn6cSfZ3z97CJMofGnrUQJ/
         C6Sg==
X-Gm-Message-State: AOAM531Twicn6DVN4uS8lUbRqZs/+Yi0goV610gVOw4FNzu0QBqZLfx8
        xSM+IoVWfyL/AzN7t5b4c7WCpIhmXLNGZSyUynl9QGG6dsNi3w==
X-Google-Smtp-Source: ABdhPJyXFPMj0hfog8DqAA9Fv2desq61TfhzBIoyY59lAN9Gg0Drmja//xbzjuSnSd2hDwAwjCAVaLqHgYj7g7m3fTo=
X-Received: by 2002:a81:6d4f:0:b0:2fe:b911:fb6d with SMTP id
 i76-20020a816d4f000000b002feb911fb6dmr4421832ywc.140.1652475240413; Fri, 13
 May 2022 13:54:00 -0700 (PDT)
MIME-Version: 1.0
References: <20220512175011.28753-1-dipenp@nvidia.com>
In-Reply-To: <20220512175011.28753-1-dipenp@nvidia.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 13 May 2022 22:53:49 +0200
Message-ID: <CACRpkdb0nrQO_543KOeQsms=TtsmLNh2Waim_ko3wN4n890z2g@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: Renamed hte directory to timestamp
To:     Dipen Patel <dipenp@nvidia.com>
Cc:     thierry.reding@gmail.com, linux-kernel@vger.kernel.org,
        linux-tegra@vger.kernel.org, devicetree@vger.kernel.org,
        robh+dt@kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, May 12, 2022 at 7:50 PM Dipen Patel <dipenp@nvidia.com> wrote:

> Renamed hte dt binding directory to timestamp according review comment.
> Addressed minor comment about having HTE acronym first in the common dt
> binding document.
>
> The change reflects above renaming in MAINTAINERS files too.
>
> Signed-off-by: Dipen Patel <dipenp@nvidia.com>
> ---
> This patch is on top of old series (Intro to Hardware timestamping
> engine V6) present in linux-next tentatively in preparation for
> merge.

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
