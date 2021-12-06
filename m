Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AD5DA469C35
	for <lists+devicetree@lfdr.de>; Mon,  6 Dec 2021 16:18:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1346020AbhLFPVW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Dec 2021 10:21:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55392 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1358456AbhLFPTa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Dec 2021 10:19:30 -0500
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com [IPv6:2607:f8b0:4864:20::102f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0A90AC0698CD
        for <devicetree@vger.kernel.org>; Mon,  6 Dec 2021 07:13:43 -0800 (PST)
Received: by mail-pj1-x102f.google.com with SMTP id cq22-20020a17090af99600b001a9550a17a5so11049309pjb.2
        for <devicetree@vger.kernel.org>; Mon, 06 Dec 2021 07:13:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=cnQqBSAo+K5oxr9l26dxH3RShjXf+td6E+PHuLLI4y8=;
        b=VQIiWgpFRexhnDvLc40hcuZW7IZloc67v1EO6pDc4gDJnAh0CPsQ5fznnTZhQcFJXW
         ktjxw6RbnBpLiUVoQ/VacQo/TSIwujyyBjZaLSEgclpiWnMOU0wdE/lJEBphP9+pWKl1
         MLh+Ujy0n3oE+c9MqT0iP4kmn7D/myUpNO+J5WgQ7hnBstrPn6rVBDc6ScOZQCYHYQoj
         +aICtAZrE2isxEmPRNrM5erhDnCag58kMThzQA/slIoLTYR09wAa1WJmPubjtobDJ1XZ
         9q3B9k6Z9uz/EgFWcroiQpydY7/DYNHpq0fI+n4mKDIt2+NZ47cNlDIXk/1cTE+i5Yn5
         t7eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=cnQqBSAo+K5oxr9l26dxH3RShjXf+td6E+PHuLLI4y8=;
        b=hsGVr1kNZQ7EVnaBScWv+OJCpXugjpxZXAA4Mcs24leI+BGwHYSxookOObhkpzKjuv
         ENGM5ObwnfyxKELw3/NxpIQyn9UUR8KnOHFBaZJntFW4g312r+SpDcczofElxwa6noMY
         dgfw4FJ21Txgr+yMeMft/qKRJ0Jvp6e0kkKlxCSP0RVM8hR8Rb+t2AWjaL1FnQLS36V9
         2ZaPZX+uAk91QZNRyaHHmd7PySiN+o6mHOPei3rMgS8QXNf0FPlpzCRpwstv1MKjZda9
         3WQszfvuykatXPa/XFUUqPDANDj+DlDr0Xb4aVnicq2xYpbQecL/859GGuLhe+iR+bPG
         PEOw==
X-Gm-Message-State: AOAM531yQqpAugn6j3wBDhcEUiYkSkmjXk/SRFI2W8i8ZzaMz993WNy6
        O79BOlNq3lEDIE+ukd3AT71oJtyqdTS0AUpSkb6FoQ==
X-Google-Smtp-Source: ABdhPJxLJ6uUWWiSZlny/JEj/mVjhmgg6C7BE3VsA338kjFc2t92GnAbloeXMtJTb10Jeu46/eWHG5/ObtlkLgQyN8c=
X-Received: by 2002:a17:903:2004:b0:142:6344:2c08 with SMTP id
 s4-20020a170903200400b0014263442c08mr44072941pla.51.1638803620589; Mon, 06
 Dec 2021 07:13:40 -0800 (PST)
MIME-Version: 1.0
References: <20211118124819.1902427-1-robert.foss@linaro.org>
 <20211118124819.1902427-4-robert.foss@linaro.org> <Ya4nEMnZ3zQiXbaR@ripper>
In-Reply-To: <Ya4nEMnZ3zQiXbaR@ripper>
From:   Robert Foss <robert.foss@linaro.org>
Date:   Mon, 6 Dec 2021 16:13:29 +0100
Message-ID: <CAG3jFytNQHK=dTHGzd57V_m_6YNwtD2zRYgBSjykd3whzqy9pQ@mail.gmail.com>
Subject: Re: [PATCH v3 3/4] arm64: dts: qcom: apq8016-sbc: Remove clock-lanes
 property from &camss node
To:     Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     agross@kernel.org, todor.too@gmail.com, mchehab@kernel.org,
        robh+dt@kernel.org, angelogioacchino.delregno@somainline.org,
        linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        "Bryan O'Donoghue" <bryan.odonoghue@linaro.org>,
        Andrey Konovalov <andrey.konovalov@linaro.org>,
        Stephan Gerhold <stephan@gerhold.net>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 6 Dec 2021 at 16:05, Bjorn Andersson <bjorn.andersson@linaro.org> wrote:
>
> On Thu 18 Nov 04:48 PST 2021, Robert Foss wrote:
>
> > The clock-lanes property is no longer used as it is not programmable by
> > the CSIPHY hardware block of Qcom ISPs and should be removed.
> >
> > Signed-off-by: Robert Foss <robert.foss@linaro.org>
>
> Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
>
> Although I'd be happy to take the two dts patches through the Qualcomm
> tree, once the driver changes has landed.

Thanks Bjorn. I'll split the series and submit two fully reviewed v4 series.
