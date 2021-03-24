Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 508C1346EE4
	for <lists+devicetree@lfdr.de>; Wed, 24 Mar 2021 02:33:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234647AbhCXBcr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Mar 2021 21:32:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51244 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234764AbhCXBcZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 Mar 2021 21:32:25 -0400
Received: from mail-ot1-x336.google.com (mail-ot1-x336.google.com [IPv6:2607:f8b0:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 50903C061763
        for <devicetree@vger.kernel.org>; Tue, 23 Mar 2021 18:32:25 -0700 (PDT)
Received: by mail-ot1-x336.google.com with SMTP id t23-20020a0568301e37b02901b65ab30024so21464648otr.4
        for <devicetree@vger.kernel.org>; Tue, 23 Mar 2021 18:32:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=7VOrgrdN70dWogl0XiinauXPdyVgeQermYRaw/QNqt0=;
        b=hBbmOY/pOdnBESHPKcSbq4XEfcf4CsTlYKItFZKiwcBB/xJPXZAMsIJyLocveyv5+3
         6eleH0fWCj4QV8HqXjiTV6g/FGwFucgFReVSVdlYeXSv6fXBAIeJaletdSvoFv77FNdk
         Lnb+TOGdtSauD7phIq8/dztDG5bp8eEKBav5yL5OuNXbd9R86Y2LJtsrRtJ94P6CpRqS
         emLV3z9gVoAV5j1TjHV/uatbl1hgonybSIpd6tp/26g74llNmPOjI2OUNTR/OE6lH44A
         p2zyXZhgYaeUVKqIJuvM0EMdeHfjkQqjpCVjddB95WSDqPaN8hdyXbT0dIPIbkRXmQEn
         1bCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=7VOrgrdN70dWogl0XiinauXPdyVgeQermYRaw/QNqt0=;
        b=EXKp6ocrLEIVysTDDWp+b6WyHemi0rUBDw3E5oWzNRcfNVjeUqRhw5Xzai0Pl5VQQt
         gWqkhiwBFFCH7X4GT8WabIfEvHFRZMRO4J0wqYIgZcUXmXxaz58xiXmuuwge5pF8OlTV
         rzk3jbbOjrMVWaxXKYjd9APebfM/qfikRzFE6Innrifdw16ciw+oo6nH7pfeLoV9e4j7
         Zf+/zqpE3xym814POF/FlN/u88B6OLFTTjrnld7krZ8I+7P+OsKhnS9lwB92T83m0jNL
         mtKBAmQmYUZopMiKlxX22x2PMHadbj8fHJdZQkd8JS3j78E5irTiDR16yOhd1VBBKGXl
         sgkg==
X-Gm-Message-State: AOAM532kBMk43Mc6k8VfvgSoy/kCT2dlNFrYQx5aLeVAIvln7eAu+cwo
        dV43n+FyPc8SZ1yplLnDv1FxWg==
X-Google-Smtp-Source: ABdhPJxtPxePyuusyTCENnwTIquDwdttrXeqzFJKy60J6pV9Tb419yReTF9TRc4WVj94R5POEgncvQ==
X-Received: by 2002:a05:6830:225b:: with SMTP id t27mr992966otd.73.1616549544644;
        Tue, 23 Mar 2021 18:32:24 -0700 (PDT)
Received: from yoga (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id g22sm199167oop.7.2021.03.23.18.32.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Mar 2021 18:32:24 -0700 (PDT)
Date:   Tue, 23 Mar 2021 20:32:22 -0500
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Konrad Dybcio <konrad.dybcio@somainline.org>
Cc:     Andy Gross <agross@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH v2 1/2] arm64: dts: qcom: sdm845: Move reserved-memory to
 devices
Message-ID: <20210324013222.GA857060@yoga>
References: <20210312234310.3490809-1-bjorn.andersson@linaro.org>
 <13234328-7251-407d-8870-d409708632e3@somainline.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <13234328-7251-407d-8870-d409708632e3@somainline.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri 12 Mar 20:35 CST 2021, Konrad Dybcio wrote:

> Hi,
> 
> 
> I'm not sure I can agree. Especially for regions like IPA and
> TZ-reserved, which seem the same on (almost?) all..
> 

Thanks Konrad, I appreciate that.

> 
> Sure, the configuration for various remoteprocs *can* differ based on
> what the vendor decided to go with, but more often than not
> (especially with phones) vendors just take a MTP or CDP design, add a
> screen, couple of cameras and call it their own (you can tell by how
> similar most of them to the original reference designs in DT). While
> this is usually the case with lower-end (so not exactly sdm845)
> devices, it also kinda applies here...
> 

Unfortunately there's not a single memory map for each reference design,
the memory map do change during development based on feature set. I
think we can see this already among the few devices.

> 
> I guess for this one, we should find the lowest common denominator and
> keep the nodes that are in the majority of devices in 845 DTSI and
> only alter them if need be.. For WoA devices that may stray further
> away, you can just add a label to reserved-memory and /delete-node/
> it, so that you can rewrite it cleanly. The proposed approach just
> adds a lot - A LOT - of duplication. It will REALLY bite after more
> people submit 845-based phones, of which there are plenty (4 Xperias,
> a whole lot of Xiaomis, a couple of Samsungs, LGs... need I go on?).
> 

I was hoping to make it easier to reason about the memory map for each
device, but if your right about these incoming devices then I agree that
the duplication isn't worth it.

I'll respin patch 2, to get IPA going on the Yoga C630 and put this
patch on hold until this annoys me again :)

Thank you,
Bjorn
