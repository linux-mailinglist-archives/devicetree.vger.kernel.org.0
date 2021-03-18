Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 07ED2340B76
	for <lists+devicetree@lfdr.de>; Thu, 18 Mar 2021 18:14:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232183AbhCRRNp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 18 Mar 2021 13:13:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33814 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232250AbhCRRNj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 18 Mar 2021 13:13:39 -0400
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com [IPv6:2607:f8b0:4864:20::102d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DCED2C06174A
        for <devicetree@vger.kernel.org>; Thu, 18 Mar 2021 10:13:38 -0700 (PDT)
Received: by mail-pj1-x102d.google.com with SMTP id gb6so3286386pjb.0
        for <devicetree@vger.kernel.org>; Thu, 18 Mar 2021 10:13:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=1sseX0Xf3BUtKz3PR0Gizm8Ulb+76kkvwxNlI1Phel0=;
        b=lPHk5Qo2Lb35CXcQnM+dRJ5QATTMsQuJnxyOV8yE5AlzOJe7G7CXoxkCB7ivQ1MHCq
         B0Dm0BhakKimujDv9ePNv9PH/WSAC/PW8M3GpTFZZTKsPwsBEPHQeT7nPFnN4GWCBNKC
         6kDr0+TmcPqWTq4cnlMVj4fQ/ezN8uIhxFx9I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=1sseX0Xf3BUtKz3PR0Gizm8Ulb+76kkvwxNlI1Phel0=;
        b=LH46XGb8E/3Pz6gndFEMupELfSwRgSa66inqBtEHarJjOQU+MY4/W/hEMVFQj7J6Pn
         1cAIStCTeJY6vl9kE/FBOEobmNj/aHHaqXvygy2V9x0a80rkiDqvoSUKgSiwfK52kZQv
         iN1ipQoWA1r6Elxy35uWeJD68zqAv0g8eMSGUVOqjD+IlwN5+2Bqqvl+iieG6iqqqB+v
         ql69tdpO4C2igyY4fv54M6H18q4HMfQsGLpPw96ixJjOiL4msCIkBvaglHYfGbJx1k3r
         FTIfUK1nNmpjPsWgzykCLNf0EV87GVqQUsqEqOm10fnQxboMQVFCHSUshYLt3JMIklPy
         pQuw==
X-Gm-Message-State: AOAM5309JLkh8ZJIjHwB0W363EheqO6CqMQU9ynZpX5ZkasaCkXDK2oV
        tKZM/g58M3/dwgpw3TbVATlEjw==
X-Google-Smtp-Source: ABdhPJwbOEmo329XpSz1wEf3cFY6vA7M4NEYEfSU9e0kOD9VDn2EAXvUS6ECDxze8HrI66RfVx5BJA==
X-Received: by 2002:a17:902:441:b029:e6:364a:5f55 with SMTP id 59-20020a1709020441b02900e6364a5f55mr10714521ple.7.1616087618263;
        Thu, 18 Mar 2021 10:13:38 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:3cf8:6a09:780b:f65d])
        by smtp.gmail.com with UTF8SMTPSA id 21sm2666277pgf.69.2021.03.18.10.13.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Mar 2021 10:13:37 -0700 (PDT)
Date:   Thu, 18 Mar 2021 10:13:36 -0700
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Roja Rani Yarubandi <rojay@codeaurora.org>
Cc:     agross@kernel.org, bjorn.andersson@linaro.org,
        gregkh@linuxfoundation.org, robh+dt@kernel.org,
        linux-serial@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Rajendra Nayak <rnayak@codeaurora.org>,
        akashast@codeaurora.org, msavaliy@qti.qualcomm.com
Subject: Re: [PATCH V2 1/2] soc: qcom-geni-se: Cleanup the code to remove
 proxy votes
Message-ID: <YFOKQKlI3MjMouEA@google.com>
References: <20210318111009.30365-1-rojay@codeaurora.org>
 <20210318111009.30365-2-rojay@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210318111009.30365-2-rojay@codeaurora.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Mar 18, 2021 at 04:40:08PM +0530, Roja Rani Yarubandi wrote:
> ICC core and platforms drivers supports sync_state feature, which
> ensures that the default ICC BW votes from the bootloader is not
> removed until all it's consumers are probes.
> 
> The proxy votes were needed in case other QUP child drivers
> I2C, SPI probes before UART, they can turn off the QUP-CORE clock
> which is shared resources for all QUP driver, this causes unclocked
> access to HW from earlycon.
> 
> Given above support from ICC there is no longer need to maintain
> proxy votes on QUP-CORE ICC node from QUP wrapper driver for early
> console usecase, the default votes won't be removed until real
> console is probed.
> 
> Signed-off-by: Roja Rani Yarubandi <rojay@codeaurora.org>
> Signed-off-by: Akash Asthana <akashast@codeaurora.org>

I suggest to mention that this is essentially a revert of commit
048eb908a1f2 ("soc: qcom-geni-se: Add interconnect support to fix
earlycon crash"). This makes the life of reviewers easier and it's
also good to have the reference in the git history.

You could also mention commit 7d3b0b0d8184 ("interconnect: qcom:
Use icc_sync_state") in the intro.

I tried to test by first reproducing the original issue without
'sync_state' in the ICC, but wasn't successful, probably something
changed in the boot/ICC timing in the meantime ¯\_(ツ)_/¯.

Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
