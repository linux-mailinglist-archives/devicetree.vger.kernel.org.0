Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 20C88614293
	for <lists+devicetree@lfdr.de>; Tue,  1 Nov 2022 02:04:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229561AbiKABEu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Oct 2022 21:04:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48460 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229441AbiKABEt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Oct 2022 21:04:49 -0400
Received: from mail-yw1-x112d.google.com (mail-yw1-x112d.google.com [IPv6:2607:f8b0:4864:20::112d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4DE3111814
        for <devicetree@vger.kernel.org>; Mon, 31 Oct 2022 18:04:48 -0700 (PDT)
Received: by mail-yw1-x112d.google.com with SMTP id 00721157ae682-333a4a5d495so123433937b3.10
        for <devicetree@vger.kernel.org>; Mon, 31 Oct 2022 18:04:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Co31BusoGSY0MXuFeKA0QlCszA6tiMpIiw8hHEzMy28=;
        b=fFKYIUFXKtITwrPLqasMLB1EHzFCV1ahYkQ3s3TQmt2L/uccTfNAITexpynI2emGWQ
         L0efnOz06fdQ8AYkBw3yutXLfnrZD9pX+EAy71QXcnxzg7zwGB+ot793T+iJLK35xwJx
         3W+An4ChtjB6RS4TU/6nHfnIFyL+gUS3fqyy2Zzk/i4gUr40thWNi6GOryi4XGk0Rf7b
         29bnWmE+gT7Juq6qz4fkfjRrKCp/vVqxloUhoUJP73sHMYVQzYtCBWfS2hcW5sx+Qu+m
         55rOvBGn27AKXrhd7SPCjeIbnYet7rzcBRdHPq0gknY9a6e2XiYOx3jqaiZMLzJcQq3W
         0VfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Co31BusoGSY0MXuFeKA0QlCszA6tiMpIiw8hHEzMy28=;
        b=wwrGfqfVqCGMGgb4VgCzD7bbLRJE5cNvgAO9EoVoT5242WR7R8ETR90fnV1CX3mcPK
         kXvZnGyPpK4yjupR08NiTQ4qtnH5LDMTiwtJ3kkeZ+x0bpKO2Ik40H1m87Nclo1zkA3k
         40oHNaM5pzeWdzMqp7UedmjldaboMk+BiYKrXRcZGFFuclwbfiCBpKfqcNZOcTitpCVz
         XXUB5jaT3Gfd+FB/dxoE9Tra8cjdtZ9h/DxbCvkb+Kf4jeCncI47LMRYSkVqbgWyL50S
         wSdUm8qbNWzJwQDU03UPGNePaBTMyNMnmTm6tsL9rtAYZ6W+UoWyPw3xQ1lanFAxHkwB
         FXIA==
X-Gm-Message-State: ACrzQf0P1d6Hvlm9cIfrp6AycBTwCGAb5B53FYpKw1kyMu2V5mpl+ffo
        KT+PRctCe05kjzCWdGeF5Ae45o6f5FhXnDGFzxM6PA==
X-Google-Smtp-Source: AMsMyM5AqSG/s/7RS5sYTrot30XqWHEK/nyNuZSJdwa4sk5v4Ezc4sUV0G3a3sCElW41Ozxyxt5F67HvM8x9vV+w5A8=
X-Received: by 2002:a81:ab4f:0:b0:36f:d141:f9af with SMTP id
 d15-20020a81ab4f000000b0036fd141f9afmr15526798ywk.311.1667264687461; Mon, 31
 Oct 2022 18:04:47 -0700 (PDT)
MIME-Version: 1.0
References: <20221028102450.1161382-1-ajye_huang@compal.corp-partner.google.com>
 <20221028102450.1161382-2-ajye_huang@compal.corp-partner.google.com>
 <Y1vDYNOwZNOco1hq@sirena.org.uk> <20221031184343.GA3235956-robh@kernel.org> <Y2A0fdwnHTqw/NDw@sirena.org.uk>
In-Reply-To: <Y2A0fdwnHTqw/NDw@sirena.org.uk>
From:   Ajye Huang <ajye_huang@compal.corp-partner.google.com>
Date:   Tue, 1 Nov 2022 09:04:37 +0800
Message-ID: <CALprXBYEsB5z-iioBeyeBAwPFkOnkQn8CBbj9Di9CpdqvFFnOg@mail.gmail.com>
Subject: Re: [PATCH v1 1/2] ASoC: dt-bindings: Document dmic_sel-gpios
 optional prop for two DMICs case
To:     Mark Brown <broonie@kernel.org>
Cc:     Rob Herring <robh@kernel.org>, linux-kernel@vger.kernel.org,
        Liam Girdwood <lgirdwood@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shengjiu Wang <shengjiu.wang@nxp.com>,
        Charles Keepax <ckeepax@opensource.cirrus.com>,
        Takashi Iwai <tiwai@suse.com>,
        Jaroslav Kysela <perex@perex.cz>,
        Arnaud Pouliquen <arnaud.pouliquen@foss.st.com>,
        angelogioacchino.delregno@collabora.corp-partner.google.com,
        devicetree@vger.kernel.org, alsa-devel@alsa-project.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Mark, Rob

To avoid confusion, I had submitted another one for process
