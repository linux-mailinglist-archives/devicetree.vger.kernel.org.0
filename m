Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ECF2E549DDC
	for <lists+devicetree@lfdr.de>; Mon, 13 Jun 2022 21:41:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1343691AbiFMTlf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Jun 2022 15:41:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46264 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233744AbiFMTlO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Jun 2022 15:41:14 -0400
Received: from mail-pf1-x434.google.com (mail-pf1-x434.google.com [IPv6:2607:f8b0:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 44A4076288
        for <devicetree@vger.kernel.org>; Mon, 13 Jun 2022 11:08:35 -0700 (PDT)
Received: by mail-pf1-x434.google.com with SMTP id c196so6449356pfb.1
        for <devicetree@vger.kernel.org>; Mon, 13 Jun 2022 11:08:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=6RfOO19u1aifVisZByr6WMgdeJkVkBAonCLIE3lhww4=;
        b=ZayI3pusa6NPPyQZLxoG9kjQSrLh5RNRtXEreB7tn3HaMiEKs1Z81QJIKGnlBiOvT8
         3ZLMkTlpiBnqjIIlh93/+g4p5UHN4QIWDyTopX3GH7Euacyu8/dnuI4KUls12eDKB465
         pxLc45h7AyHIaDcwYjMRBCzav/15XOBFQDWOU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=6RfOO19u1aifVisZByr6WMgdeJkVkBAonCLIE3lhww4=;
        b=FSgLjHC3CoGfwkmfuz1hyqjSZoLMK4Qad+2vu4246M8X4qWtuT1ktyYF8PYc340Ydw
         NLfNNEqg0jHXaFFI2Txr8k6FGpoic0TGEP88KGVd9xkOuS69kXJaCY5XAPY6ayCnXJ5T
         OMwbVsbHiPAwvILM2w7U8ncEa7V2fDE22i1xt3nBifuKbhfIZN19NbdynEd0bDhTTy7R
         L0TslucUdEtrKNaMkDQEfLgWOpS9ombV52j9rYki2WeIdScTpjCZmGjivUBbm6wlzqco
         YXb+UawR1NqDaxHLEOy9qC0g4BUg8HwOBDMQyhQHMH75mpt/m1AOAlApw+gAtGhph5z/
         Zx0g==
X-Gm-Message-State: AOAM532qDu8FBbWBGPsvpjoIC4Xb5EHvsuI5FCAgzxEQ/hrvgpEsCAvj
        VQu2Jh4Yo99/I5VIr+zFkstIjA==
X-Google-Smtp-Source: ABdhPJzyTBSrgeUuj8ZPrTjLj2otwZf42YS9YWJUq0VMLGjI4RlCZxEMTxCgygHUnY0IX59pPnAQ+w==
X-Received: by 2002:a05:6a00:1acd:b0:51c:795b:860c with SMTP id f13-20020a056a001acd00b0051c795b860cmr591557pfv.16.1655143714650;
        Mon, 13 Jun 2022 11:08:34 -0700 (PDT)
Received: from localhost ([2620:15c:11a:202:c4fb:a1d8:47ef:f10c])
        by smtp.gmail.com with UTF8SMTPSA id f12-20020aa782cc000000b0051bd9981cacsm5734717pfn.123.2022.06.13.11.08.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Jun 2022 11:08:34 -0700 (PDT)
Date:   Mon, 13 Jun 2022 11:08:32 -0700
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Krishna Kurapati <quic_kriskura@quicinc.com>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Felipe Balbi <balbi@kernel.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Doug Anderson <dianders@chromium.org>,
        Mathias Nyman <mathias.nyman@intel.com>,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pm@vger.kernel.org, quic_pkondeti@quicinc.com,
        quic_ppratap@quicinc.com, quic_vpulyala@quicinc.com,
        Sandeep Maheswaram <quic_c_sanm@quicinc.com>
Subject: Re: [PATCH v20 2/5] usb: dwc3: core: Host wake up support from
 system suspend
Message-ID: <Yqd9IHQEj3Ex+FcF@google.com>
References: <1654158277-12921-1-git-send-email-quic_kriskura@quicinc.com>
 <1654158277-12921-3-git-send-email-quic_kriskura@quicinc.com>
 <YpkRDi2m7cLaKYEf@google.com>
 <Yp5nf2w8uVZ38/XZ@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <Yp5nf2w8uVZ38/XZ@google.com>
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jun 06, 2022 at 01:45:51PM -0700, Matthias Kaehlcke wrote:
> On Thu, Jun 02, 2022 at 12:35:42PM -0700, Matthias Kaehlcke wrote:
> > Hi Krishna,
> > 
> > with this version I see xHCI errors on my SC7180 based system, like
> > these:
> > 
> > [   65.352605] xhci-hcd xhci-hcd.13.auto: xHC error in resume, USBSTS 0x401, Reinit
> > 
> > [  101.307155] xhci-hcd xhci-hcd.13.auto: WARN: xHC CMD_RUN timeout
> > 
> > After resume a downstream hub isn't enumerated again.
> > 
> > So far I didn't see those with v13, but I aso saw the first error with
> > v16.
> 
> It also happens with v13, but only when a wakeup capable vUSB <= 2
> device is plugged in. Initially I used a wakeup capable USB3 to
> Ethernet adapter to trigger the wakeup case, however older versions
> of this series that use usb_wakeup_enabled_descendants() to check
> for wakeup capable devices didn't actually check for vUSB > 2
> devices.
> 
> So the case were the controller/PHYs is powered down works, but
> the controller is unhappy when the runtime PM path is used during
> system suspend.

The issue isn't seen on all systems using dwc3-qcom and the problem starts
during probe(). The expected probe sequence is something like this:

dwc3_qcom_probe
  dwc3_qcom_of_register_core
    dwc3_probe

  if (device_can_wakeup(&qcom->dwc3->dev))
    ...

The important part is that device_can_wakeup() is called after dwc3_probe()
has completed. That's what I see on a QC SC7280 system, where wakeup is
generally working with these patches.

However on a QC SC7180 system dwc3_probe() is deferred and only executed after
dwc3_qcom_probe(). As a result the device_can_wakeup() call returns false.
With that the controller/driver ends up in an unhappy state after system
suspend.

Probing is deferred on SC7180 because device_links_check_suppliers() finds
that '88e3000.phy' isn't ready yet.
