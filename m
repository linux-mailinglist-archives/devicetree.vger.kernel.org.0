Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2D54D4C997E
	for <lists+devicetree@lfdr.de>; Wed,  2 Mar 2022 00:49:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231574AbiCAXuc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Mar 2022 18:50:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34424 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231547AbiCAXuc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Mar 2022 18:50:32 -0500
Received: from mail-yb1-xb2e.google.com (mail-yb1-xb2e.google.com [IPv6:2607:f8b0:4864:20::b2e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 15E4E61A15
        for <devicetree@vger.kernel.org>; Tue,  1 Mar 2022 15:49:50 -0800 (PST)
Received: by mail-yb1-xb2e.google.com with SMTP id j12so30485966ybh.8
        for <devicetree@vger.kernel.org>; Tue, 01 Mar 2022 15:49:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=iq9SJsRTIEiQ9BodGEOUC/X40Bm070y/iGyzaDPlSG4=;
        b=ZOTnHsC2Q2AXdMG6Lw51nFkAD5wvt/qqOt9OfKWTb9up3HV5pX5B+l+rqWEWCF0sPM
         gUmXnDKeYORdY6zpYETUuJQ73EVGo/O9Z6mLtfiug+eZej7/VAF/1ZVI0n2iKUINLJdR
         N91B3hFa84pOBzxyhzkMJbPZsAhOcuvaqO8AjQrG/z+lVVncVXe7xbabm/o466VyvORr
         VD4pADR5/dBEBSO/mJN0nGAuqMPZj4UpiZuZnOgoV3Lr9EebLx2Se88glmdMgcza3mKw
         7acCX8DR4j9XTNNRId9Sc8+CoeA0N0ytdE+TaniNNhu0ubmeHG8wzuPw8moSuQBtOZa3
         psgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=iq9SJsRTIEiQ9BodGEOUC/X40Bm070y/iGyzaDPlSG4=;
        b=ZdelMHlL+hKl7N1rt4N8JBKgVrSjtuWkqX93eXU036haDWn7PeGwwdvKQ54LQ1bGbD
         ejttpr5HgcXgGeGBG1+N0TwuMIW0vhje1ZhIEFUJxDbkC8wflmgJwMHFQYX13zv1yOD1
         FOEek4+GCOfVXbjOb2w61EnmJnI36YMJ5Wgu5If9hheUJKaqweqb0gfjyrewqhMny78/
         R0Myymht7MMtwDfTmfGox3Q+/G4L8ExIbRNCBmfN9jw82o4H0Ot2pxrib1ZM8o3dIltS
         +B2DrouOVOI14dEmnk9r3Jwcf0Y7ipt1gNemh+8AK1NM7k4KdEB7L5qyXyzb5JH+jbRA
         8pbg==
X-Gm-Message-State: AOAM533cFDhOtNHwbSi+LtGala+ZBApiohlO7mhMMtEVdx10hNvGF7kc
        TPn0OPa5fiypzjGqTp+zCGUXbmqEbToIQgsgLA/oTQ==
X-Google-Smtp-Source: ABdhPJxbr3Zo1a2uvT3xuwZ4naduJv0andGWtMdmAQkS4hmBNidmoSOqNyi0ZFyDWn4ssRsj3etodXLW8MlO2y7nkcY=
X-Received: by 2002:a5b:dc5:0:b0:624:f16d:7069 with SMTP id
 t5-20020a5b0dc5000000b00624f16d7069mr25880238ybr.295.1646178589324; Tue, 01
 Mar 2022 15:49:49 -0800 (PST)
MIME-Version: 1.0
References: <20220301225432.60844-1-absicsz@gmail.com> <20220301225432.60844-3-absicsz@gmail.com>
In-Reply-To: <20220301225432.60844-3-absicsz@gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 2 Mar 2022 00:49:37 +0100
Message-ID: <CACRpkdYRi_i1rjvZ9=8txXP0GbxAzPGC+rbLPeghJCofZ1A7Bg@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] iio: accel: Remove unused enum in st_accel
To:     "Sicelo A. Mhlongo" <absicsz@gmail.com>
Cc:     Jonathan Cameron <jic23@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Denis Ciocca <denis.ciocca@st.com>, linux-iio@vger.kernel.org,
        devicetree@vger.kernel.org, Lars-Peter Clausen <lars@metafoo.de>,
        Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
        Jonathan Cameron <Jonathan.Cameron@huawei.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Mar 1, 2022 at 11:55 PM Sicelo A. Mhlongo <absicsz@gmail.com> wrote:

> The st_accel_type enum is not used anywhere else in the code, and can be
> removed
>
> Suggested-by: Jonathan Cameron <Jonathan.Cameron@Huawei.com>
> Signed-off-by: Sicelo A. Mhlongo <absicsz@gmail.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
