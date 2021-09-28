Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 85D6D41A5FF
	for <lists+devicetree@lfdr.de>; Tue, 28 Sep 2021 05:19:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238802AbhI1DVH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Sep 2021 23:21:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38182 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238795AbhI1DVG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Sep 2021 23:21:06 -0400
Received: from mail-oi1-x231.google.com (mail-oi1-x231.google.com [IPv6:2607:f8b0:4864:20::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DE48FC061575
        for <devicetree@vger.kernel.org>; Mon, 27 Sep 2021 20:19:27 -0700 (PDT)
Received: by mail-oi1-x231.google.com with SMTP id u22so28317390oie.5
        for <devicetree@vger.kernel.org>; Mon, 27 Sep 2021 20:19:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=onA5gitzbhND4lKJZ/81nF5bPiG9NjZqAmNBCuE2l2A=;
        b=BoV7/r/5pjnRACCDFHqcmeD3ZZJsdegN3esgBhOrbaFfVQ4ElfWsoo9Y8MJyhFdbwK
         iAEcmA2L7trGtGiaKwapfSE7qMU9toSYwaGsE1fAZcrYEQXRCRsNONqGBlry2ZrHoi2N
         kUlxMlgb6XJ4LwGB65lOKico9CyDaPxWAv+8h/chyfbK3hLCK2wxhzxVhtpEuQA0AMkE
         /ZT6VRovv1LQW/uaKaa5feIp4CPg9kQVOjn0tpMkWrp8AwoHwQP1BWsxGrllGeeuruWZ
         tGZelOVcEuGWBOiI8Ovp580Chl/8ryHva3gyIo6oItmj+xY5T7q2rHe14g1pLLgf16l4
         mHzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=onA5gitzbhND4lKJZ/81nF5bPiG9NjZqAmNBCuE2l2A=;
        b=U2CsbtoiMN/iWlKro8OyADlkxkZ6EVu6YQeY03qo0qcfcMMFZefzoLMQdIczSn1+/8
         W6RsTC9Q7z3epnZkqmeneb5xvfVUM3UEdrY8C/32peJf+Uz9z+sgpnsu+ShoC9V/nfEr
         sehJxfVR/DZyBwiuFz1XcLXIybIKcs0jMV73jpJIrqNUMGTbf205ZcT1RxG96GEZ7/DL
         adgPk/vSVD38NW11W3N32CkDYNXDEApDB60T34EiFUZG3oDMaQn+HQs1vW4G3JUbkivt
         s3ybAOgPlwNG7cU5MPSCmuyVp9yz+QQZmB4iR3GqZnxmtVhXxbxjLtRLNNB6WzHC7k65
         kwEQ==
X-Gm-Message-State: AOAM532sHGRqUZaLZLtyTpmS0KWiNKJxw0xDN8MnHZjj3UneEZbT4XvD
        cdybvfNdui3sAU/80Vrmo+czEg==
X-Google-Smtp-Source: ABdhPJzD2pIquIHT4rCoKN3ZqPDhiYOCZ9J1OQLWBtRH2r+M0Hl4qv3X8fbbURpYDjfh7T1wshZicA==
X-Received: by 2002:a05:6808:1912:: with SMTP id bf18mr1910365oib.118.1632799167177;
        Mon, 27 Sep 2021 20:19:27 -0700 (PDT)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id h17sm555962oog.17.2021.09.27.20.19.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Sep 2021 20:19:26 -0700 (PDT)
Date:   Mon, 27 Sep 2021 22:19:25 -0500
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Cc:     broonie@kernel.org, robh@kernel.org, plai@codeaurora.org,
        pierre-louis.bossart@linux.intel.com, tiwai@suse.de,
        devicetree@vger.kernel.org, perex@perex.cz,
        alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org
Subject: Re: [PATCH v8 00/22] ASoC: qcom: Add AudioReach support
Message-ID: <YVKJvUMW5RWVzTT2@builder.lan>
References: <20210927135559.738-1-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210927135559.738-1-srinivas.kandagatla@linaro.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon 27 Sep 08:55 CDT 2021, Srinivas Kandagatla wrote:
[..]
> Srinivas Kandagatla (22):
>   soc: dt-bindings: qcom: apr: convert to yaml
>   soc: dt-bindings: qcom: apr: deprecate qcom,apr-domain property
>   soc: qcom: apr: make code more reuseable
>   soc: dt-bindings: qcom: add gpr bindings
>   soc: qcom: apr: Add GPR support

These patches has been merged into the Qualcomm drivers-for-5.16 tree
and an immutable tag is available at:

https://git.kernel.org/pub/scm/linux/kernel/git/qcom/linux.git tags/20210927135559.738-6-srinivas.kandagatla@linaro.org

Regards,
Bjorn
