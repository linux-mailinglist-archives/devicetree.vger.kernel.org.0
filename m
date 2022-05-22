Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E430353027E
	for <lists+devicetree@lfdr.de>; Sun, 22 May 2022 12:50:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244313AbiEVKuY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 22 May 2022 06:50:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48934 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242729AbiEVKuW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 22 May 2022 06:50:22 -0400
Received: from mail-qt1-x830.google.com (mail-qt1-x830.google.com [IPv6:2607:f8b0:4864:20::830])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A2E983AA54
        for <devicetree@vger.kernel.org>; Sun, 22 May 2022 03:50:20 -0700 (PDT)
Received: by mail-qt1-x830.google.com with SMTP id 11so8599186qtp.9
        for <devicetree@vger.kernel.org>; Sun, 22 May 2022 03:50:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=rMSZBpH/H/FacBKevZwHpHrOVAuB9nAU7tsT6+kwvqc=;
        b=BHhQhEKiqcWHuM0HR89BY+qJPcolFZNLLh03Ka5HN2m7kZu6lydvfwQ6O71CKOeLSk
         LxBDb+LyT3bIOqKn/d9Lxx2uGj3p+9y/Knl+ZN3xKpSzvo4YLpbX9Msc69gr1jP3SiUV
         h2AhIENOkR5dOXBQEElaz5rCRPToLw0vwvnBo1XHARudU7ApuJGe5FIeCWxu294giFw/
         EZLyANJmErGToQVMeLjKKxIPdmrMY3c9z0xJYFd8N6KnCk6xfdsn560mVwhVa504JPP5
         CAiXvWFuZ/9/0fUhNsBulDU4a0hzv7xYMTDwwe5qIzkYqYqCLDPFQo9sE0/EFS8HH06V
         Z7qA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=rMSZBpH/H/FacBKevZwHpHrOVAuB9nAU7tsT6+kwvqc=;
        b=f40ppEhF//QL1E7X1u3aJ0ggC8qAiQdvly7C3+kfuUs+PPcSpOTEwbr3RqLVKg57tr
         WLe/eBrbqBt5VD6419R1eOggLeCjShAZkqiVsLljkN3MbHtMNaKAzaY5Zk4pUdvmIxii
         P2JP9T+M54eOl42E0wnUmHRjpx/gGp7rG4k08oFkDJf2b2OzSq+Gke7uB3YvwD9CBCRs
         uIPx5DI9BbEopyMtrHMSx5EAbWbqVKtwHCjqvmdOSpuqHadVDzen9LtFbLDIFPaaSZcw
         WEi+1fp/xgoQTgr7G0SudupEIL4jKszUv6ZRlnY/UTJK5DpvIbCkv490AcMhMPDXHAbZ
         31Xw==
X-Gm-Message-State: AOAM5313oOnjuaMMHeYEbfqFLxc5h/1pSPHEfGBB7dsvCjp2fQ9Ygug6
        7l2QnOazkfXxuhuJjV1kqeV6ocAmTk/Www/kpVb+ig==
X-Google-Smtp-Source: ABdhPJzhxA/gSzGAxK5AYEKbcYHlFItto9Bg2bFbvhV3RKrnTCkqWnWhyvSldCQkqjUm0Rl9VTrKiR99DWVvUztZt4Y=
X-Received: by 2002:a05:622a:188e:b0:2f3:dc9f:946 with SMTP id
 v14-20020a05622a188e00b002f3dc9f0946mr13258860qtc.682.1653216619074; Sun, 22
 May 2022 03:50:19 -0700 (PDT)
MIME-Version: 1.0
References: <a3c932d1-a102-ce18-deea-18cbbd05ecab@linaro.org>
 <35051bec-98ea-b4c5-f734-06b3f22f3562@linaro.org> <8a90ffbc-b376-9115-fb91-0b46d98873b7@linaro.org>
 <40f29157-52c0-001f-6c14-fb90b351756a@linaro.org> <20220519221227.B66D3C385AA@smtp.kernel.org>
 <CAA8EJpqjcAcoooaZ6iTSCy4B1x4=HTUgvJ4VqX_Fr_hSMEbfDA@mail.gmail.com> <eb915633-4d88-ec9a-d51a-7d5f5ecc0843@linaro.org>
In-Reply-To: <eb915633-4d88-ec9a-d51a-7d5f5ecc0843@linaro.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Sun, 22 May 2022 13:50:08 +0300
Message-ID: <CAA8EJprOg3ZTonrCSbd1a233247G182=VvX4sNeKcGPbmJME3g@mail.gmail.com>
Subject: Re: Removal of qcom,board-id and qcom,msm-id
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Amit Pundir <amit.pundir@linaro.org>
Cc:     Stephen Boyd <sboyd@kernel.org>, Andy Gross <agross@kernel.org>,
        Arnd Bergmann <arnd@arndb.de>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Olof Johansson <olof@lixom.net>, Rob Herring <robh@kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
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

Adding Amit to the CC list.

On Sun, 22 May 2022 at 13:27, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 20/05/2022 03:39, Dmitry Baryshkov wrote:
> >
> >>
> >> I vaguely recall that the properties had to be extracted during the
> >> boot.img creation process to create a table of contents header. But
> >> after some time the bootloader started scanning the DTBs directly for
> >> the vendor properties and thus the header was deprecated/removed. If the
> >> bootloader is doing the scanning then I'm not sure what is preventing
> >> the properties from being documented and allowed. I think the main
> >> rejection was that the properties were added purely to be extracted
> >> during post processing and placed into the table of contents header,
> >> i.e. they weren't actually used by the kernel or the bootloader. If they
> >> are now used by the bootloader it sounds OK to me if they're kept
> >> around.
> >
> > Yes, as far as I understand, they are used by the bootloader directly.
> >
>
> I entirely missed one part - Stephen's patches from 2015 were actually
> applied and since 2015 we expect all boards to follow convention:
>
> compatible =
> "qcom,<SoC>[-<soc_version>][-<foundry_id>]-<board>[/<subtype>][-<board_version>]"
>
> The patchset was accepted, although in the thread I do not see "Applied"
> message.
>
> Stephen,
> can you or anyone else confirm that the dtbTool Qualcomm uses (and/or
> bootloader) are adjusted as well to these new compatibles?
>
> If yes, we can simply remove board-id and msm-id properties from new
> boards, because 7 years was enough to switch to these new tools...

Amit, can you please comment on the AOSP image build process and the
possibility to drop the board-id/msm-id from the dts files in favour
of using the dtbTool.


-- 
With best wishes
Dmitry
