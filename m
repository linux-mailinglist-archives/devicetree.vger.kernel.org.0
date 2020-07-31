Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4178C234239
	for <lists+devicetree@lfdr.de>; Fri, 31 Jul 2020 11:18:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731981AbgGaJSE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 31 Jul 2020 05:18:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59252 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732016AbgGaJSD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 31 Jul 2020 05:18:03 -0400
Received: from mail-io1-xd41.google.com (mail-io1-xd41.google.com [IPv6:2607:f8b0:4864:20::d41])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 80892C061575
        for <devicetree@vger.kernel.org>; Fri, 31 Jul 2020 02:18:03 -0700 (PDT)
Received: by mail-io1-xd41.google.com with SMTP id l17so31018086iok.7
        for <devicetree@vger.kernel.org>; Fri, 31 Jul 2020 02:18:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=MBYKW+6zfDB2a54T6hWqLG1CXD8Xv9gEE8YRBupknoc=;
        b=Q4dxRilWRBgR7d7mMciRIspoaJm1fKMtrrxqGop4MRWMLfDc2D9yEkmq7lanCl9IDe
         r7Ipz4IWXCJMfmE8gERtTCXqU0PCd2yaU25HbqQAmtQQfmbt9kxpDNN2AVYcf2lFK1pC
         cwqvXq69UceGzBHTSrTnvMYRIvHZl+qJ4u17vqcges3uTIgsNJpdkSZKEYBAdS6e1jjj
         qwjFZv61E1DWla4RqmgLOTPcf169N+7qeHI86xyeTQ+kuv1LDlJTZGttIqTSER1GnIn6
         R01XGra1AUEkoKQGTvP1e29NBtDPetvcV9hgYInxlth9Nfx8/iX5yND0vqQLmGYSWbhj
         /bCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=MBYKW+6zfDB2a54T6hWqLG1CXD8Xv9gEE8YRBupknoc=;
        b=h51czFR3br00WIac+uTpJw+JGnQO01QC93qbKXrS8k7gJB3kVse9ikMMVa0GaL8R2/
         QYIbReon3XV1CPlEfHSWKmO8LheVO5yiHQM3MvJ9dWdM13eOOaOeV9IJvO8YRweEGYYy
         TgDdr0DXVzpGbYEHy9OcobU9Zg7AWmTMPp4uhzttGecq8cgEAfh5CXjfcNjm3oOZwat7
         XotRWfPPze73qAkrNeN6UawAd0WvlGUEMJeeMMQbnzaeJHUpdqiUgSBdd7j1/4RIrVXF
         D24uHqXfaafSLvwBGZyS0cAFPoibVnSV2NzaMzQTY02j1TOygBouvHYcnovYxdK78t83
         SNjQ==
X-Gm-Message-State: AOAM5315Oir7/cRzk7C6ovnFBu8PB2z01gqNettI+u+8Wp8cAwwXn6sE
        k7jWXr38+KSykbyP73LbO3+UluaEcH3I7RTcKAl79A==
X-Google-Smtp-Source: ABdhPJx+ufc4R00ufDto7B+hLq2EDngnNSkTrnF9favAezBqDM2gxaTBrSA3LHvhe9NZwN3t9yBnkD6e7zjqycRcULE=
X-Received: by 2002:a5d:9b05:: with SMTP id y5mr2682909ion.59.1596187081282;
 Fri, 31 Jul 2020 02:18:01 -0700 (PDT)
MIME-Version: 1.0
References: <20200731084023.2678931-1-cychiang@chromium.org> <20200731084023.2678931-3-cychiang@chromium.org>
In-Reply-To: <20200731084023.2678931-3-cychiang@chromium.org>
From:   Tzung-Bi Shih <tzungbi@google.com>
Date:   Fri, 31 Jul 2020 17:17:50 +0800
Message-ID: <CA+Px+wXL6-zM6vBZj9_6MhxQz7Dy_Z4J7+RUYEViVkWYv2zX=g@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] ASoC: qcom: sc7180: Add machine driver for sound
 card registration
To:     Cheng-Yi Chiang <cychiang@chromium.org>
Cc:     Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Mark Brown <broonie@kernel.org>,
        Taniya Das <tdas@codeaurora.org>,
        Rohit kumar <rohitkr@codeaurora.org>,
        Banajit Goswami <bgoswami@codeaurora.org>,
        Patrick Lai <plai@codeaurora.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>,
        Srini Kandagatla <srinivas.kandagatla@linaro.org>,
        Stephan Gerhold <stephan@gerhold.net>,
        Douglas Anderson <dianders@chromium.org>, dgreid@chromium.org,
        Tzung-Bi Shih <tzungbi@chromium.org>,
        linux-arm-kernel@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        ALSA development <alsa-devel@alsa-project.org>,
        Ajit Pandey <ajitp@codeaurora.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jul 31, 2020 at 4:41 PM Cheng-Yi Chiang <cychiang@chromium.org> wrote:
>
> From: Ajit Pandey <ajitp@codeaurora.org>
>
> Add new driver to register sound card on sc7180 trogdor board and
> do the required configuration for lpass cpu dai and external codecs
> connected over MI2S interfaces.
>
> Signed-off-by: Ajit Pandey <ajitp@codeaurora.org>
> Signed-off-by: Cheng-Yi Chiang <cychiang@chromium.org>
Reviewed-by: Tzung-Bi Shih <tzungbi@google.com>

LGTM.
