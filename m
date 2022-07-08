Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7893756B841
	for <lists+devicetree@lfdr.de>; Fri,  8 Jul 2022 13:17:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237748AbiGHLQb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 8 Jul 2022 07:16:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46618 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237372AbiGHLQa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 8 Jul 2022 07:16:30 -0400
Received: from mail-pj1-x1030.google.com (mail-pj1-x1030.google.com [IPv6:2607:f8b0:4864:20::1030])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 963E188F39
        for <devicetree@vger.kernel.org>; Fri,  8 Jul 2022 04:16:29 -0700 (PDT)
Received: by mail-pj1-x1030.google.com with SMTP id o15so13293079pjh.1
        for <devicetree@vger.kernel.org>; Fri, 08 Jul 2022 04:16:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=9pxRzC16JvI6XrHETjpEsWuC7ZOkDrDDxpQzeVesUkw=;
        b=eC4c/Yv+vfc5m2n7yrsPt5XRidoT4flrlzisDPBjQ8IkCO0DNvX0S9OEoSIuuF9TEW
         gAwRA5Rf/QMORx9k0v95txkHD1q6P5ctf5uzWp7Kt3obN85JTqGaN67tKx34gT4/dry/
         Y7dhtGkw0j3hL/Ja+7jGu9o2fxengVmknMR4DD6lnzCEcqiagmRK/WHeApCXcfBbgKeI
         xAOyUu2VbIKIVYq941ooyswxj5dcVh+W8cFD9Ocq+JrPB+PHVDFJw9FhgZBtBf5zxBoI
         CrE0fYsII1Xag7Wu/MFA3BY+UklmhQKOD2ZTihXpytZkhzfNdNefOiP/qFjy+gh96Ztq
         IlBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=9pxRzC16JvI6XrHETjpEsWuC7ZOkDrDDxpQzeVesUkw=;
        b=mby5fozawCqxugMqcql9/lX9l8erVpxCkoWAtzAnnGTu6yXz0nLGu95/HKT+BbI9b4
         7ClX/buFsEoAcKj/YtUnT32GMv2+xd2QsFbW6u+tNy5zPJt1T9f9q0pmT/oIVnExP9Ck
         vvNiFKlEjAjxP6z+TqOGYe19IERF1M8rNXiFW1g1EtQlBcgF56wGSaKbsul3mX4mJ/Kn
         h5ZqO8DR17gQEtmEEGrohBDA0olzH1FA26VDH0eTwAhkU0IcCpHA804at+MKFQbAowHy
         YbglX5CK6ft3/72b4ChCM2h6+VVhoW6i9n4gDfhiKlqEuAFV5SNCGxkQ1XrQGaOI6Lom
         XwLg==
X-Gm-Message-State: AJIora+SZR2Z2t2jYJxrUaGzTSQsqHqPcz1bldaDcHvNgsmCzIPZEGP+
        f8Dh5NB99ZNDRWc7oPutLajNwlXWVmPlWm5eSkf8ww==
X-Google-Smtp-Source: AGRyM1tzpo2mOeF7iKxzvg+zpehl5CoBucS0kIZROW5vNZFZzjO+eWpTiehdFwSn/COt6UL7voTQBULfb/VRjzS3qz4=
X-Received: by 2002:a17:903:185:b0:16a:6113:c01 with SMTP id
 z5-20020a170903018500b0016a61130c01mr3229508plg.113.1657278989095; Fri, 08
 Jul 2022 04:16:29 -0700 (PDT)
MIME-Version: 1.0
References: <20220707115444.1431367-1-sumit.garg@linaro.org> <20220707142259.7rqbiuk2yztdt2ox@maple.lan>
In-Reply-To: <20220707142259.7rqbiuk2yztdt2ox@maple.lan>
From:   Sumit Garg <sumit.garg@linaro.org>
Date:   Fri, 8 Jul 2022 16:46:18 +0530
Message-ID: <CAFA6WYOME6zwDpDuZx1mjkn98K+RoMmKOPo+D8on3jxdr+7M6g@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: qcs404: Fix incorrect USB PHYs assignment
To:     Daniel Thompson <daniel.thompson@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        agross@kernel.org, bjorn.andersson@linaro.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, vkoul@kernel.org,
        shawn.guo@linaro.org, bryan.odonoghue@linaro.org,
        nicolas.dechesne@linaro.org, mworsfold@impinj.com,
        andrey.konovalov@linaro.org
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

Hi Daniel,

On Thu, 7 Jul 2022 at 19:53, Daniel Thompson <daniel.thompson@linaro.org> wrote:
>
> On Thu, Jul 07, 2022 at 05:24:44PM +0530, Sumit Garg wrote:
> > This was a difficult inconsistency to be caught as both the USB PHYs were
> > being enabled in the kernel and USB worked fine. But when I was trying to
> > enable USB support in u-boot with all the required drivers ported, I
> > couldn't get the same USB storage device enumerated in u-boot which was
> > being enumerated fine by the kernel.
>
> This is not really a description of the change. It is more like a
> narrative about how you discovered and tested the problem (making it
> hard work to read). If I understand correctly the current DT has the
> PHYs setup backwards. This works but only by luck: as each USB HCI
> comes up it configures the *other* controllers PHY which is enough
> to make them happy. If, for any reason, we were disable one of the
> controllers then both would stop working.
>
> Perhaps kick off this description using something like the following
> pattern[1].
>
>   Current code does (A), this has a problem when (B).
>   We can improve this doing (C), because (D).
>

Thanks for the reminder.

> I think everything in the paragraph above belongs in (D) (e.g. how you
> know your patch is correct).
>

I thought that was the most interesting bit while writing patch
description but I agree with you that adding other bits will make the
patch description complete.

-Sumit

>
> Daniel.
>
>
> [1] For the record, I didn't write this formulation... I stole it:
>     https://lore.kernel.org/all/20131111113218.GF15810@gmail.com/
