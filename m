Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 588EE38AE65
	for <lists+devicetree@lfdr.de>; Thu, 20 May 2021 14:36:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229534AbhETMhV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 May 2021 08:37:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57390 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234330AbhETMhA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 May 2021 08:37:00 -0400
Received: from mail-yb1-xb2b.google.com (mail-yb1-xb2b.google.com [IPv6:2607:f8b0:4864:20::b2b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 89945C034633
        for <devicetree@vger.kernel.org>; Thu, 20 May 2021 04:48:28 -0700 (PDT)
Received: by mail-yb1-xb2b.google.com with SMTP id b13so21000128ybk.4
        for <devicetree@vger.kernel.org>; Thu, 20 May 2021 04:48:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=IzY+SQkfmVarzVl12JOqpF+g+vofysWXcmcw1n0tXyk=;
        b=kFilxWChMBWOdh2BWmPwnl879OJWmL6mRV0fowtUhReTcUISE9afvvX+wH6Ym1fUS7
         BLpnEhNoYQuICVNMrTE/deWTQWDk8AGcGb5m/IoZWqWNx0SwH7B3L8ix/kywgRiJB8Fw
         DzWxuoapRNUPDjyXr6XRyV61FxdZjdaLj7JQsJf31LGat88dgZfcVjtwylhl/MgWys6q
         M6oyzcam4xHmzJE8TpKjZ3asbQjLXjQLEmBQcF+zGO68XLR3Qerq0wy3MC0xdS84V9yK
         a3r2xkxRDjXZ9AMnjnpiAWTFvK5P6QRSJDQTuaQ2dBVR/RLRtewY48J8od0baEPPXpVW
         itmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=IzY+SQkfmVarzVl12JOqpF+g+vofysWXcmcw1n0tXyk=;
        b=BrOAFrAvzYM8II5XMgd4CrSjudN4p6hx/orc0hpbcdKi2R88m+OlOwnwnxUyh4AGA6
         o8hC2xgWOFYER9HR5PNE9zpJyfD2mh+XH5CCPrShinz9hRE2m5/xldjUDpM/NXa6dS1j
         Uih14qrXlfvodwwZdlqGj/B4kMpRw+s4+hNgB4V8FTJghZ1Rf4MumxNvEaSehOJIwiJF
         b1A+1dk6sFUte9txI8uibKwNBGALsd9crFZUlK7uYnVlevf2vx98kE8ocQBst/feMhZF
         CxtIitCMCxmzDkHK0Pbkw4LWxMQddni7KrDHykyJEG07me7jeKT9rT4j+wQSoif5DdUi
         x8YQ==
X-Gm-Message-State: AOAM533eWXNoA9dzLToMtC2tO/NZkAAcXKWg8CYovkgqRzVlsntH21wL
        n2ifjFs1IQOrDnn7uOxTe7QYUnyOoIAInkWa5lerng==
X-Google-Smtp-Source: ABdhPJxLuyht98R9stDoeFxuz2RFWAB9bkdIq1ZZUcGkIlI+Ijs7qG26c8Uabkt9z7GuoUfJyb8UNAFfGKL38ajpVTs=
X-Received: by 2002:a25:1fc2:: with SMTP id f185mr6327358ybf.258.1621511307687;
 Thu, 20 May 2021 04:48:27 -0700 (PDT)
MIME-Version: 1.0
References: <1601058581-19461-1-git-send-email-amit.pundir@linaro.org>
 <20200929190817.GA968845@bogus> <20201029134017.GA807@yoga>
 <CAMi1Hd20UpNhZm6z5t5Kcy8eTABiAj7X_Gm66QnJspZWSio0Ew@mail.gmail.com>
 <20201124175146.GG185852@builder.lan> <87sg8heeta.fsf@codeaurora.org>
 <CAMi1Hd2FN6QQzbKHooVyqQfH1NFTNLt4RwxyVXRf+5DwTc9ojg@mail.gmail.com>
 <87czxa4grv.fsf@codeaurora.org> <YCF5ZC/WMRefTRcQ@builder.lan> <87blctveyj.fsf@codeaurora.org>
In-Reply-To: <87blctveyj.fsf@codeaurora.org>
From:   Amit Pundir <amit.pundir@linaro.org>
Date:   Thu, 20 May 2021 17:17:52 +0530
Message-ID: <CAMi1Hd2g68U8LVng2+RmhD+zFLqW8vcHS54FvaKxNF+BMs_tZg@mail.gmail.com>
Subject: Re: [PATCH] ath10k: Introduce a devicetree quirk to skip host cap QMI requests
To:     Kalle Valo <kvalo@codeaurora.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh@kernel.org>
Cc:     Jeffrey Hugo <jeffrey.l.hugo@gmail.com>, netdev@vger.kernel.org,
        linux-wireless@vger.kernel.org,
        lkml <linux-kernel@vger.kernel.org>,
        ath10k <ath10k@lists.infradead.org>,
        Konrad Dybcio <konradybcio@gmail.com>,
        dt <devicetree@vger.kernel.org>,
        David S Miller <davem@davemloft.net>,
        John Stultz <john.stultz@linaro.org>,
        Jakub Kicinski <kuba@kernel.org>,
        Sumit Semwal <sumit.semwal@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

Reviving this old thread again, to check if there are still any hopes
of landing this patch upstream.

Based on the feedback I have got so far, there are no easy way to skip
this part of the initialization at runtime. Bjorn and Kalle discussed
the possibility of creating device specific firmware-N.bin firmware
file but that would mean firmware-N.bin has to be loaded from the
device-specific directory along with wlanmdsp.bin. And ideally making
ath10k/ath11k in-charge of firmware loading, but there doesn't seem to
be a consensus on this either(?)

Regards,
Amit Pundir


On Tue, 9 Feb 2021 at 13:41, Kalle Valo <kvalo@codeaurora.org> wrote:
>
> Bjorn Andersson <bjorn.andersson@linaro.org> writes:
>
> > On Mon 08 Feb 11:21 CST 2021, Kalle Valo wrote:
> >
> >> Amit Pundir <amit.pundir@linaro.org> writes:
> >>
> >> > Hi Kalle,
> >> >
> >> > On Mon, 7 Dec 2020 at 22:25, Kalle Valo <kvalo@codeaurora.org> wrote:
> >> >>
> >> >> This is firmware version specific, right? There's also enum
> >> >> ath10k_fw_features which is embedded within firmware-N.bin, we could add
> >> >> a new flag there. But that means that a correct firmware-N.bin is needed
> >> >> for each firmware version, not sure if that would work out. Just
> >> >> throwing out ideas here.
> >> >
> >> > Apologies for this late reply. I was out for a while.
> >>
> >> No worries.
> >>
> >> > If by that (the firmware version) you mean "QC_IMAGE_VERSION_STRING",
> >> > then that may be a bit tricky. Pocophone F1 use the same firmware
> >> > family version (WLAN.HL.2.0.XXX), used by Dragonboard 845c (which has
> >> > Wi-Fi working upstream).
> >>
> >> I'm meaning the ath10k firmware meta data we have in firmware-N.bin
> >> (N=2,3,4...) file. A quick summary:
> >>
> >> Every ath10k firmware release should have firmware-N.bin. The file is
> >> created with this tool:
> >>
> >> https://github.com/qca/qca-swiss-army-knife/blob/master/tools/scripts/ath10k/ath10k-fwencoder
> >>
> >> firmware-N.bin contains various metadata, one of those being firmware
> >> feature flags:
> >>
> >> enum ath10k_fw_features {
> >>      /* wmi_mgmt_rx_hdr contains extra RSSI information */
> >>      ATH10K_FW_FEATURE_EXT_WMI_MGMT_RX = 0,
> >>
> >>      /* Firmware from 10X branch. Deprecated, don't use in new code. */
> >>      ATH10K_FW_FEATURE_WMI_10X = 1,
> >>
> >>         [...]
> >>
> >> So what you could is add a new flag enum ath10k_fw_features, create a
> >> new firmware-N.bin for your device and enable the flag on the firmware
> >> releases for your device only.
> >>
> >> I don't know if this is usable, but one solution which came to my mind.
> >
> > It sounds quite reasonable to pass this using firmawre-N.bin instead of
> > DT, however that would imply that we need to find firmware-N.bin in the
> > device-specific directory, where we keep the wlanmdsp.mbn as well - and
> > not under /lib/firmware/ath10k
> >
> > For other devices (e.g. ADSP, modem or wlanmdsp.mbn) we're putting these
> > in e.g. /lib/firmware/qcom/LENOVO/81JL/ and specifies the location using
> > a firmware-name property in DT.
>
> Ah, I didn't realise that.
>
> Actually I would like to have ath10k in control[1] of QMI/rproc firmware
> loading as the firmware releases have different constraints, like the
> issue we are now discussing. Ideally firmware-N.bin would contain all
> firmware files, for example wlanmdsp.mbn, and from the meta data
> ath10k/ath11k would know what version of the firmware interface should
> be used.
>
> I remember we discussed this briefly a year or two ago and there was no
> easy solution, but I really wish we could find one. More these kind of
> firmware interface incompatibilities will most likely pop up, also in
> ath11k, so it would be great to find a clean and easily maneagable
> solution.
>
> [1] With control I mean that ath10k/ath11k can choose which firmware
> should be loaded
>
> --
> https://patchwork.kernel.org/project/linux-wireless/list/
>
> https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches
