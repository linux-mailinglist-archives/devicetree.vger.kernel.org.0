Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9302C5A5E7C
	for <lists+devicetree@lfdr.de>; Tue, 30 Aug 2022 10:48:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231583AbiH3Isv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Aug 2022 04:48:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59744 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231574AbiH3Isu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Aug 2022 04:48:50 -0400
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 16AB3BB690
        for <devicetree@vger.kernel.org>; Tue, 30 Aug 2022 01:48:48 -0700 (PDT)
Received: by mail-ed1-x531.google.com with SMTP id a36so9448829edf.5
        for <devicetree@vger.kernel.org>; Tue, 30 Aug 2022 01:48:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=7iCvOssdkyuxbhoQt5lAWcL9dGnbKNvL6gaRHI/rUIE=;
        b=e1waB5CIdo3f9+WqVOb5fZZ2HpfISqnyynQUiahYiWLbFsihpG9YE7QGYopiztHtXQ
         YXEVdbX5AT4GycNvKMv93DvvepUVg+cxuEJlA0UotKWcwF/kSBe2qXUNXMGy9guT6bV5
         AWSQtUErN9c0DciG1ox0ijf+yrYasDH4uJBLnx8hbOrv6gv7x85Jec8rXbrE0LjZj9sk
         93q8Ykimr38kngAzUz8DKwDpkYE3jYvNo7+WdsjBp53wMiCrqp/oeTJzQjx6/W2HSGhW
         u4Y5/h24B6BB5dnDQ/Ib5Lz38xBIe+zaPEQSgnFMnVmjsBqoTuzLc4NulAl2wPP3JkyF
         Ynjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=7iCvOssdkyuxbhoQt5lAWcL9dGnbKNvL6gaRHI/rUIE=;
        b=7GQXuwYJWQk0v4tQqSdWZBJaCGVRInrzQDgy6IKBa+MrS33mFdva041ZCtHT9++vYm
         /t/Bya41/pL+lqfcsB5yalOTwWshbTWFR6NH3aUijmVR2xTRx1FM/A0LfB5K5kiKW3hv
         YjTtWXeoHvF56s91MMc7/xSk7Ud6/JsqBR34LAMWGn0lB3GvikbxnM7LsR1dP+UFz7lN
         4iBy38P3au50oc/12fos0RTgqc7XCVgvCdAzeNXxkjEcJeXOW3zed1SOt1JlIWssCRAL
         BlqhEujLh+wsEqNp2FYkfIJ1FlccUOo+9D+W9byuwp/iF5K2FM+u1lMg8HfBR6jPgca1
         7TFw==
X-Gm-Message-State: ACgBeo25gDJM1lOczH0vOw/q1vNCoWByAFxFsLVIvTpZ7Y26le939mto
        0g+3kfbrbi8Ed8ZSougec8Nbhgspm/kNCNTbWBDtNg==
X-Google-Smtp-Source: AA6agR6mBK9z4mx3yoZ8UY/yL9aH81E4FjsmEQwAZZK0RoH7oRkvILaIaW6x0TDSxBaGMRQvceJsm6oUWvUFEePGLIk=
X-Received: by 2002:a05:6402:4446:b0:43b:e1f4:8525 with SMTP id
 o6-20020a056402444600b0043be1f48525mr19520149edb.236.1661849326660; Tue, 30
 Aug 2022 01:48:46 -0700 (PDT)
MIME-Version: 1.0
References: <20220802175755.6530-1-sudip.mukherjee@sifive.com> <20220826180327.yazfoydjiyygd7qf@mobilestation>
In-Reply-To: <20220826180327.yazfoydjiyygd7qf@mobilestation>
From:   Sudip Mukherjee <sudip.mukherjee@sifive.com>
Date:   Tue, 30 Aug 2022 09:48:35 +0100
Message-ID: <CAHyZL-cmyRprNmr_DtUQaZFXJtcV-6r-UOksFJeMz=XgDhnMNw@mail.gmail.com>
Subject: Re: [PATCH 00/11] Add support for enhanced SPI for Designware SPI controllers
To:     Serge Semin <fancer.lancer@gmail.com>
Cc:     Serge Semin <Sergey.Semin@baikalelectronics.ru>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Greentime Hu <greentime.hu@sifive.com>,
        Jude Onyenegecha <jude.onyenegecha@sifive.com>,
        William Salmon <william.salmon@sifive.com>,
        Adnan Chowdhury <adnan.chowdhury@sifive.com>,
        Ben Dooks <ben.dooks@sifive.com>, linux-spi@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Jeegar Lakhani <jeegar.lakhani@sifive.com>
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

On Fri, Aug 26, 2022 at 7:03 PM Serge Semin <fancer.lancer@gmail.com> wrote:
>
> Hello Sudip
>
> On Tue, Aug 02, 2022 at 06:57:44PM +0100, Sudip Mukherjee wrote:
> > Some Synopsys SSI controllers support enhanced SPI which includes
> > Dual mode, Quad mode and Octal mode. DWC_ssi includes clock stretching
> > feature in enhanced SPI modes which can be used to prevent FIFO underflow
> > and overflow conditions while transmitting or receiving the data respectively.
> > This is only tested on controller version 1.03a.
>

<snip>

>
> I've deliberately collected all the generic comments here so you'd be
> aware of the required changes in total, because I very much doubt all
> of them could be fixed at once via a single patchset iteration. But as
> soon as all of them are fixed we'll get a very nice and neat solution
> for the eSPI feature.
>

Thanks a lot for the summary here Sergey. I am sure I will have a few
questions for you after I start with the changes.

-- 
Regards
Sudip
