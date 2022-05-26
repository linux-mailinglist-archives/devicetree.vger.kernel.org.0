Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 913F0535548
	for <lists+devicetree@lfdr.de>; Thu, 26 May 2022 22:59:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236484AbiEZU56 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 May 2022 16:57:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43712 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234759AbiEZU54 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 26 May 2022 16:57:56 -0400
Received: from mail-qt1-x831.google.com (mail-qt1-x831.google.com [IPv6:2607:f8b0:4864:20::831])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 77807E7338
        for <devicetree@vger.kernel.org>; Thu, 26 May 2022 13:57:55 -0700 (PDT)
Received: by mail-qt1-x831.google.com with SMTP id m13so3142019qtx.0
        for <devicetree@vger.kernel.org>; Thu, 26 May 2022 13:57:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=NnCxigS7717S4njhAa3y/7BST7UjGl9n1OtAhplN6mo=;
        b=iy8H4nTnpm0ptlxNnAfnptyOMTeebWks3Da6z5yaa83efvUxLdEFA6QiomkdP/+Hzy
         yGPRJVd/DX4QjTA59rmSXFpGDgY4Cjm1YbVIXG19mzU9QK3+5lK9B+1PZRTK4IoE4s8T
         9IPWTj4hxoPFqg+GicSYLid1B5BKBLnQsK90KqogfV78AMoAmiizhqdC9G94/eng6w0N
         MCe1USh1na/Akozw674DMHIelIANS7AoTi2NuicYGT5cFAcKnJLARbxNLc4jzKdH+exG
         LNaUOcbO3Ughtk1/OrNbJgA5hK+Votqe1UI80q5s3DFKTMCSindC8Xh83YVHkH28/t9S
         lvWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=NnCxigS7717S4njhAa3y/7BST7UjGl9n1OtAhplN6mo=;
        b=FpneE+1xaNr3z8iRsqC+rwjsVJJrbd20gMe4ykRWHMPnzz947e4RXOZebk7gcNmvvD
         8b+2qviYCt/VRPq6PLy+Hq4GjHfzfaboKznvv/Y++k1vMtGjSs5dP/G9WM+FfAxtcGYp
         1+gWeNz9plYL6SE4wY5OVwbtLpIdm89uX3jjwLwUVjv7rX5bnXUSGRW8WM61O9PFtmgM
         FXd54HWpNukvolLkzt8d0SY2Xm538Apt5jcWRfB4hJ+Crifmbong3xmt+uJ0pj0DsYhG
         I7EG/FlcWFwwVa5IHJhp0BBXwl4LagJ9JftrJsCjKc/PFb2tvTG1Qvw5kdi3mtFchpbO
         G/Fw==
X-Gm-Message-State: AOAM531VG9yAV4uz0AM85JEhQVyE2KkS+p5x1now0tzYzOQqQwkKHLYe
        F5CZfzdF/Lq9rqxeH5w43fO7uRhWKhbLMLhAWFkobw==
X-Google-Smtp-Source: ABdhPJy9Iz128w6gl1rgxD4Wu4fUG4Ck/3/iu0g5XksP6rXdeZf88bLGlHne4Fhza3E/987ymifCxf9V9t82dGR0qjI=
X-Received: by 2002:ac8:5e54:0:b0:2f3:f4ee:efbd with SMTP id
 i20-20020ac85e54000000b002f3f4eeefbdmr30013444qtx.295.1653598674574; Thu, 26
 May 2022 13:57:54 -0700 (PDT)
MIME-Version: 1.0
References: <20220523181836.2019180-1-dmitry.baryshkov@linaro.org>
 <20220523181836.2019180-5-dmitry.baryshkov@linaro.org> <20220526180955.GC54904-robh@kernel.org>
In-Reply-To: <20220526180955.GC54904-robh@kernel.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Thu, 26 May 2022 23:57:43 +0300
Message-ID: <CAA8EJpoU5gife7K4FLz3XGLnGCRQ=hejvEFqXY2tBsG-4S8g7g@mail.gmail.com>
Subject: Re: [PATCH v12 4/8] PCI: dwc: split MSI IRQ parsing/allocation to a
 separate function
To:     Rob Herring <robh@kernel.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Jingoo Han <jingoohan1@gmail.com>,
        Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Stanimir Varbanov <svarbanov@mm-sol.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Vinod Koul <vkoul@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-pci@vger.kernel.org, devicetree@vger.kernel.org
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

On Thu, 26 May 2022 at 21:09, Rob Herring <robh@kernel.org> wrote:
>
> On Mon, May 23, 2022 at 09:18:32PM +0300, Dmitry Baryshkov wrote:
> > Split handling of MSI host IRQs to a separate dw_pcie_msi_host_init()
> > function. The code is complex enough to warrant a separate function.
> >
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > ---
> >  .../pci/controller/dwc/pcie-designware-host.c | 98 +++++++++++--------
> >  1 file changed, 56 insertions(+), 42 deletions(-)
>
> Reviewed-by: Rob Herring <robh@kernel.org>
>
> Note that we should probably apply this[1] or whatever fix we end up
> with first.

Ack, I will rebase this patch series the fix gets merged.

> [1] https://lore.kernel.org/all/20220525223316.388490-1-willmcvicker@google.com/

-- 
With best wishes
Dmitry
