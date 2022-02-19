Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 90A124BC92C
	for <lists+devicetree@lfdr.de>; Sat, 19 Feb 2022 16:39:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235283AbiBSPj6 convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Sat, 19 Feb 2022 10:39:58 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:52256 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229881AbiBSPj5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 19 Feb 2022 10:39:57 -0500
Received: from mout.kundenserver.de (mout.kundenserver.de [217.72.192.75])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 130DA5F8F0
        for <devicetree@vger.kernel.org>; Sat, 19 Feb 2022 07:39:36 -0800 (PST)
Received: from [192.168.1.107] ([37.4.249.169]) by mrelayeu.kundenserver.de
 (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1M7KKA-1nKLu10Q72-007lCo; Sat, 19 Feb 2022 16:39:21 +0100
Subject: Re: [PATCH v4 08/15] soc: bcm: bcm2835-power: Add support for
 BCM2711's RPiVid ASB
To:     Peter Robinson <pbrobinson@gmail.com>
Cc:     Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        bcm-kernel-feedback-list@broadcom.com, devicetree@vger.kernel.org,
        linux-rpi-kernel@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        Lee Jones <lee.jones@linaro.org>,
        Emma Anholt <emma@anholt.net>, David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Russell King <linux@armlinux.org.uk>,
        Arnd Bergmann <arnd@arndb.de>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
References: <20220213225646.67761-1-pbrobinson@gmail.com>
 <20220213225646.67761-9-pbrobinson@gmail.com>
From:   Stefan Wahren <stefan.wahren@i2se.com>
Autocrypt: addr=stefan.wahren@i2se.com; keydata=
 LS0tLS1CRUdJTiBQR1AgUFVCTElDIEtFWSBCTE9DSy0tLS0tClZlcnNpb246IEdudVBHIHYy
 CgptUUlOQkZ0NmdCTUJFQUN1Yi9wQmV2SHhidkplZnlaRzMySklObW4yYnNFUFgyNVY2ZmVq
 bXlZd21DR0tqRnRMCi9Eb1VNRVZIRHhDSjQ3Qk1YbzM0NGZIVjFDM0FudWRnTjFCZWhMb0J0
 TEh4bW5lQ3pnSDNLY1B0V1c3cHRqNEcKdEp2OUNRRFp5MjdTS29FUHh5YUk4Q0YweWdSeEpj
 NzJNOUk5d21zUFo1YlVIc0x1WVdNcVE3SmNSbVBzNkQ4ZwpCa2srOC95bmdFeU5FeHd4SnBS
 MXlsajVianhXREh5WVF2dUo1THpaS3VPOUxCM2xYVnNjNGJxWEVqYzZWRnVaCkZDQ2svc3lp
 by9ZaHNlOE4rUXN4N01RYWd6NHdLVWtRUWJmWGcxVnFrVG5BaXZYczQyVm5Ja211NWd6SXcv
 MHQKUkp2NTBGUmhIaHhweUtBSThCOG5oTjhRdng3TVZrUGM1dkRmZDN1R1lXNDdKUGhWUUJj
 VXdKd05rLzQ5RjllQQp2ZzJtdE1QRm5GT1JrV1VSdlArRzZGSmZtNitDdk92N1lmUDF1ZXdB
 aTRsbitKTzFnK2dqVklXbC9XSnB5MG5UCmlwZGZlSDlkSGtnU2lmUXVuWWN1Y2lzTXlvUmJG
 OTU1dENna0VZOUVNRWRZMXQ4aUdEaUNnWDZzNTBMSGJpM2sKNDUzdWFjcHhmUVhTYUF3UGtz
 bDhNa0NPc3YyZUVyNElOQ0hZUUR5WmljbEJ1dUNnOEVOYlI2QUdWdFpTUGNRYgplbnpTektS
 Wm9POUNhcUlEK2ZhdkxpQi9kaHptSEErOWJnSWhtWGZ2WFJMRFp6ZThwbzFkeXQzRTFzaFhp
 ZGRaClBBOE51SlZ6RUl0MmxtSTZWOHBaRHBuMjIxcmZLaml2UlFpYW9zNTRUZ1pqak1ZSTdu
 bko3ZTZ4endBUkFRQUIKdENCVGRHVm1ZVzRnVjJGb2NtVnVJRHgzWVdoeVpXNXpkRUJuYlhn
 dWJtVjBQb2tDTndRVEFRZ0FJUVVDWElkYwo0Z0liQXdVTENRZ0hBZ1lWQ0FrS0N3SUVGZ0lE
 QVFJZUFRSVhnQUFLQ1JDVWdld1BFWkR5MjFPVEQvOUdpWkxkCnRSWWNteVJKZ2x0aVFRekFp
 UWRjSUQ3OGxHb1dwL3grci92Y1U2YjZqdVl1ZVR3Z1Iwclc3djdsMklSQnlEN24KSEp4YSt0
 SVNvUVpCZ2hvbE1JZmI5TXRoR09KTENZNzdrL1FoQWhuMzJOR1prZWp3OXR6a3MvNDBtclpT
 VVQ4NApaeWJzUVhyTE0vSFI2VElJL0RlUEIwbktEM0ppcHBzMlVIUUQ5cUQySWpFd1NRUGxI
 akNPckVaaDQ1UFo3bTkrClo5M0x6aVRlc1dabFlRdUxpSndzNHJLcHRIVzFkL3dSZWxzaG1t
 NlFxY0wybDRDL2U0MGVEQjlncTRkU1poOVgKUEVZbGxpeU5RaDdhMkxTZHVtRTFyK2NTd0lq
 RS91ZHRSdmRPOWFLb0psT2JVSzVkTmpTUEg3d0tUYndkWGRZRApHUHdEaFhkNThOQXdyK1BY
 QmxQajB0STFMQ3ErTEJ4ZUt6aFdYK0dWcTlEb2pWanlVREV4Rk5Ga1h1b0M3ZzhtClY5VDB0
 ZUJpdVpSbm91WEt3VjJGcHRaT0hIN0JVRVd0a0t0aGgxZXRmT1dwaWdCemtVN2JQc2ZJWVQr
 cnk5dGIKMW9KK3Y0MVBOYXFaRW1QVXBKeHZmek5UN3Ayd01lRDdaajlmMHJ1YlJQdExBSjJR
 R2pyRkhzdVh3QU9xcHl6ZQoxOEVidHNZazBOMHp1SEVoY2orUEJJQmZoMFlJWWQ1MW9mNkdJ
 aU95UjlxMFhYdHBsVUo3VDIvSDF1UXFrWGxwCitnVzRWa2lmc2NJckl1eWZueFpXMTJlSXZq
 NnlicVdMN2FZS0dZbVQ2aUxDUGJIWXlZY2F5bDRFa0ZjckNGN0UKZTBXVC9zY1ZNaE8vNVgv
 SGFOQTVIQngvcjUycGdMY3Y0aTlNeExRbVUzUmxabUZ1SUZkaGFISmxiaUE4YzNSbApabUZ1
 TG5kaGFISmxia0JwTW5ObExtTnZiVDZKQWpnRUV3RUNBQ0lGQWx0NmdCTUNHd01HQ3drSUJ3
 TUNCaFVJCkFna0tDd1FXQWdNQkFoNEJBaGVBQUFvSkVKU0I3QThSa1BMYmpic1AvamdqYVNz
 NUh0bGtBSXZXUytGcm15N2MKaG5jT0F4TFRWL0Q2UkV3SU95R0poRkt3d29pck55UTJnOXZV
 YTNZQ1lDZjFmSjh3RWhhS09COWQwTHBNUm5MNApkRVQ4ZDgyMzhFL3BLK0hxTktpSXNKaHM2
 SnNLOFpnalZRR3JtbWZua0dyWisxdjBIQnV4ZGljZ0duUC9XdHVBClVsOGw2Mi9BTGJheXlq
 KzYxQ2xyc0V0UklhcU82N0xJWXdQaVBEUkkrWGlNek5pR3pIRi8xUTZHUjAyUkg2YTMKRjg5
 ejhhUHhjSGkxWnZDdDJ5a3o2VUVjaHpQMHI1Z3FGSisvTC9VcHU4ME1YaVk0djVlSWFCNTJn
 VlBnaXlNQQpsTDJkRHMxbUladm5yUkxSWTJ0YjNtQVlOa1Y1QjVJRFQzcGtXeTZrS281T0Nn
 SytZZFlPUjhGTloyb04ydDhPCnJLK1ZudGFLN01NU0tIbG1ZL3NPd3RSbEVoMU9CbXJjQ3dH
 d21wLzA1R2tSNDZmL0lzaFJWZUZPUmF3K0dBcXQKUDIrQ0ZhMkNOQS9JSG5aTm95aWtsRHpQ
 UUhVVUdzck5wcERyaFg5Sm1oQm1nMXYyeXdIMU5YdTFpRGZQMUJBdwpLZ29rdDVmNVVhUkY5
 c0FBNTN2V0V2YlVVTjllZXNGR0x6UFdkSkdRNWhwZC9WSDVJUXk5U0JyaC93SWNla3E1Cm4w
 a042cGJUSHhHRTUyU2kvTVZJa05UdURaM2FwbjJqbERaNHBPdHBCWEkydlAzYlBPK05pcUJa
 anNVM3R4TGkKV2R2MkZqeXp6NlhMUndlV1JZVkw1SGE2TER0eG9yMnZ1NlVQMDdwOXh6MXhS
 WmFPRFczb1lsSEZ6WXBhNFc1ZwpMSGIybEVrSXVVZlNjaWNHYmpqQXRDbFRkR1ZtWVc0Z1Yy
 Rm9jbVZ1SUR4emRHVm1ZVzR1ZDJGb2NtVnVRR2x1CkxYUmxZMmd1WTI5dFBva0NOd1FUQVFn
 QUlRVUNYSWRlaHdJYkF3VUxDUWdIQWdZVkNBa0tDd0lFRmdJREFRSWUKQVFJWGdBQUtDUkNV
 Z2V3UEVaRHkyeUhURC85VUY3UWxEa0d4elE3QWFDSTZOOTVpUWY4LzFvU1VhRE51Mlk2SQpL
 K0R6UXBiMVRiVE9yM1ZKd3dZOGEzT1d6NU5MU09MTVdlVnh0K29zTW1sUUlHdWJEM09EWko4
 aXpQbEcvSnJOCnQ1elNkbU41SUE1ZjNlc1dXUVZLdmdoWkFnVERxZHB2K1pIVzJFbXhuQUox
 dUxGWFhlUWQzVVpjQzVyMy9nL3YKU2FNbzl4ZWszSjVtTnVEbTcxbEVXc0FzL0JBY0ZjK3lu
 TGh4d0JXQld3c3Z3UjhiSHRKNURPTVd2YUt1RHNrcApJR0ZVZS9LYjJCK2pyYXZRM1RuNnMv
 SHFKTTBjZXhTSHo1cGUrMHNHdlArdDlKNzIzNEJGUXdlRkV4cmlleThVCkl4T3I0WEFiYWFi
 U3J5WW5VL3pWSDlVMWkyQUlRWk1XSkFldkN2VmdRL1UrTmVSaFh1ZGU5WVVtRE1EbzJzQjIK
 VkFGRUFxaUYyUVVIUEEybThhN0VPM3lmTDRyTWswaUh6TElLdmg2L3JIOFFDWThpM1h4VE5M
 OWlDTHpCV3UvTgpPbkNBYlMremx2TFphaVNNaDVFZnV4VHR2NFBsVmRFamY2MlArWkhJRDE2
 Z1VEd0VtYXpMQU1yeDY2NmpINWt1ClVDVFZ5bWJMMFR2Qis2TDZBUmw4QU55TTRBRG1rV2tw
 eU0yMmtDdUlTWUFFZlFSM3VXWFo5WWd4YVBNcWJWK3cKQnJoSmc0SGFONkM2eFRxR3YzcjRC
 MmFxYjc3L0NWb1JKMVo5Y3BIQ3dpT3pJYUFtdnl6UFU2TXhDRFhaOEZnWQpsVDR2MjNHNWlt
 SlAyemdYNXMrRjZBQ1VKOVVRUEQwdVRmK0o5RGEycitza2gvc1dPbloreWNvSE5CUXZvY1pF
 Ck5BSFFmN2tDRFFSYmVvQVRBUkFBMkhkMGZzRFZLNzJSTFNESGJ5ME9oZ0RjRGxWQk0yTSto
 WVlwTzNmWDFyKysKc2hpcVBLQ0hWQXNRNWJ4ZTdIbUppbUhhNEtLWXMya3YvbWx0L0NhdUNK
 Ly9wbWN5Y0JNN0d2d25Lem11WHp1QQpHbVZUWkM2V1I1TGtha0ZydEhPelZtc0VHcE52NVJj
 OWw2SFlGcExrYlNrVmk1U1BRWkp5K0VNZ01DRmdqclpmClZGNnlvdHdFMWFmN0hOdE1oTlBh
 TEROMW9VS0Y1aitSeVJnNWl3SnVDRGtuSGp3QlFWNHBndzIvNXZTOEE3WlEKdjJNYlcvVExF
 eXBLWGlmNzhJaGdBelh0RTJYck0xbi9vNlpINzFvUkZGS096NDJsRmR6ZHJTWDBZc3FYZ0hD
 WAo1Z0l0TGZxemoxcHNNYTlvMWVpTlRFbTFkVlFyVHFueXMwbDE4b2FsUk5zd1lsUW1uWUJ3
 cHdDa2FUSExNSHdLCmZHQmJvNWRMUEVzaHRWb3dJNm5zZ3FMVHlRSG1xSFlxVVpZSXBpZ21t
 QzNTd0JXWTFWNmZmVUVta3FwQUFDRW4KTDQvZ1Vnbjd5US81ZDBzZXFuQXEycFNCSE1VVW9D
 Y1R6RVFVV1ZraUR2M1JrN2hURm1oVHNNcTc4eHYyWFJzWApNUjZ5UWhTVFBGWkNZRFVFeEVs
 RXNTbzlGV0hXcjZ6SHlZY2M4cURMRnZHOUZQaG1RdVQyczlCbHg2Z0kzMjNHCm5FcTFsd1dQ
 SlZ6UDRqUWtKS0lBWHdGcHYrVzhDV0xxekRXT3ZkbHJEYVRhVk1zY0ZUZUg1VzZVcHJsNjVq
 cUYKUUdNcGNSR0NzOEdDVVcxM0gwSXlPdFF0d1dYQTRueStTTDgxcHZpQW1hU1hVOGxhS2FS
 dTkxVk9WYUY5ZjRzQQpFUUVBQVlrQ0h3UVlBUUlBQ1FVQ1czcUFFd0liREFBS0NSQ1VnZXdQ
 RVpEeTIrb1hELzljSEhSa0JaT2ZrbVNxCjE0U3Z4MDYyUHRVMEtWNDcwVFNucC9qV29ZSm5L
 SXczRzBtWElSZ3J0SDJkUHdwSWdWanNZeVJTVk1LbVNwdDUKWnJEZjlOdFRiTldnazhWb0xl
 WnpZRW8rSjNvUHFGclRNczNhWVl2N2U0K0pLNjk1WW5tUSttT0Q5bmlhOTE1dApyNUFaajk1
 VWZTVGx5VW15aWMxZDhvdnNmMWZQN1hDVVZSRmNSamZOZkRGMW9ML3BEZ01QNUdaMk93YVRl
 am15CkN1SGpNOElSMUNpYXZCcFlEbUJuVFlrN1B0aHk2YXRXdllsMGZ5L0NxYWpUS3N4Nytw
 OXh6aXU4WmZWWCtpS0IKQ2MrSGUrRURFZEdJRGh2TlovSVFIZk9CMlBVWFdHUytzOUZOVHhy
 L0E2bkxHWG5BOVk2dzkzaVBkWUl3eFM3SwpYTG9LSmVlMTBEamx6c1lzUmZsRk9XMFpPaVNp
 aElDWGlRVjF1cU02dHpGRzlndFJjaXVzNVVBdGhXYU8xT3dVClNDUW1mQ09tNGZ2TUlKSUE5
 cnh0b1M2T3FSUWNpRjNjcm1vMHJKQ3ROMmF3WmZnaThYRWlmN2Q2aGp2MEVLTTkKWFpvaUFa
 WVpEKy9pTG01VGFLV042b0dJdGkwVmpKdjhaWk9aT2ZDYjZ2cUZJa0pXK2FPdTRvclRMRk16
 MjhhbwpVM1F5V3BOQzhGRm1kWXNWdWE4czZnTjFOSWE2eTNxYS9aQjhiQS9pa3k1OUFFejRp
 RElScmdVek1FZzhBazdUCmZtMUtpWWVpVHRCRENvMjVCdlhqYnFzeXhrUUQxbmtSbTZGQVZ6
 RXVPUEllOEp1cVcyeEQ5aXhHWXZqVTVoa1IKZ0pwM2dQNWIrY25HM0xQcXF1UTJFNmdvS1VN
 TEFia0NEUVJiZmw5REFSQUFzRExjYStMbFAydm5mdEVHaHBjQQpCR1ZOUUVGbkdQckNhdVU2
 SGhOODA1V3RQVHRtc1JPdUp6cWdVVDBtcHFXSWZacTZzTXd5dkhLOVRzL0tIM0paClVWYlJD
 M3oyaDNLZmhIL0RhZjk1cGQ2bVBjL2g5dkYvT3kzK2VUV2hnR25QNmNBNWtsUitmTzFXaEc4
 VnJpWHYKck5lUkcyMHN6emplSG9jblNJY1Q1WHVaUjB1REhPaUd4T2l6MXNNUkZUR3h6R095
 MTlSOXJ2dTYzdGlJM2Q3dgpnYzc1T0NBZGtlQi9TZUNFbGFSdzBUZjdMWmJQampzRjI2M0JZ
 bk1mNGtrTkVLdnFXY1UyaWNNcCtxZXpqeW5CCnB2ZXVlMHJDVFFCWUFRbG9GQ1ZUR0hyV1dB
 NkQ0VzVPMkFmSWRJYzF1MUpDWnAyZjVMV1ZvVUZUVklyUW5RUVUKU0hDaWZyOU1aeExUdFBK
 ZFU1Mm9TUHczZGs0aExQOGlKSUx1dnYvYXZhakNzUVlIRXR3WXNiZUZaeGl1TGdscApBN1lj
 Sk5ObXBnQ3BNRDR3VWh2bEN0QUtOQlFXeXIyOTc2OThFUVRuNDZlQmVVNkttMkNpaFhrZ3dD
 eWY4ZXlLCkxFM3NYZXdhcTVrZ1pXdk5xNml1NXFZSVJCOXl3K2NYYzYwZE9aRE9scTkzWDVT
 QVJZemFvZXBrSHo0cmtMa1AKUG8rdENIeUhRUHNHblBYYzlXVDgwREM5Tm5KR2R2VWx5NXJk
 TUk0eHBaeWdlb2tqd293VlFsUFV1Y1M2TXluNwpmOHc4Y2dmQjdDMklBSWNEeDJwUC9IendY
 dmtDT1FOQTdtVjFsTTA4bitnVmtUcnpweGlwNURicTRDSW9ZeDJNCkpaVDhiR1JINlhqY1VE
 S2EwOVFoeVpzQUVRRUFBWWtFUkFRWUFRZ0FEd1VDVzM1ZlF3SWJBZ1VKQThKbkFBSXAKQ1JD
 VWdld1BFWkR5MjhGZElBUVpBUWdBQmdVQ1czNWZRd0FLQ1JCVnhETFBjVk1NamNkc0QvMFJo
 QXN1UVlPeQpyMTNCbDNOaFhrWUFaR3AyWkZER3VrZTdPU2tWOG9qT09UZFR5ei9jT1JHQ2J5
 ZEQrRGd2cUZ5VmRuT1hLZ08wCmxKbUd3ckdlTGRnZ0F2aDBpaHJwNU8wWVVKOWJCU1htR01t
 UVRZSC9BbUxUR2FkYnVqQ1dqNWZGVWtDeXd4aW0KSHV5MFBiMjRwelR2UzUwR1k1WStxSDBG
 SE5haWdka2tpV04zcnVnN0haRXUvQ3lsUFpqT1h6K0QxUVBNckV4dwo3ZC9NS2FiVis5YU5i
 UVlabGRJajk4UXd2VUYxS1N6YThqbFVJdnBoUnEyN0FUOGZER1lHUGZERU1nMmNCT2FlCkty
 N29uUXM0YjdhV082aWZEbHhRVHB6c3pvK0FuODA3Tk1TdFZFRmYrczNBaFZEM2U3bmY4SkJh
 dmJWckFlMGsKb20yNm96elBubnh6K2xxVlZ0dzZVazRYTUl6dGl4L0h3SFl3dUNuY1VYWndL
 MEkzeUFKd2pZd29vck9DaEozUwpFVWJKUVB0R3NneFJERXhWQkZlNk5MUC82MnhQOU82dGFj
 d09kYjBNbVAxYjM5cFJBVEM3YmdkMWxkVUxpNzVaCmxKckowL1NpVkVyb3FOWXk3OXRmbWdB
 WjJVeFptczlTckV5Nm85UVNmc24xYVh2K01QTDlKYUNHbWtQNnpiTFEKTm5kajBKY2FRbmtD
 MHZneWRPMUJtNk11OTZQOXVmbEtaY0FTNndtTE01SWRIT3lqTDg4d0h3anVjakFPQnRjdwpw
 MG9HVG5WT25Sc05ZU084VzhZWi9LZGJ1Nzg1ZGF6TXFKMmlOakFEdUJiZG02TjRqNUVkTW5r
 TG4wQklmUEpwCmRnbTR2bDJVcExqd1JHci9NM3dtbTVwdnMrNnVCN2hrL0ZKaUQvNGxsRU5Q
 NGVNMWg3U200aitWcTZOMSt6VEIKSVhKQWViSXFhc0RwNXlaUzdYcnk0STM2bjg1WEVZZkcw
 MWx0QXlob05WMkRPOFNJUlFwdWkydHErOVJQM1JLMQpKREJ4eEVKWTJFTzVKWjhNeGFQSFEw
 RFQwNWxSRmpLMkFsaGRFSXRqTGpwSjNmVW05c3FMeE1XeHpQNlV6M2lpCjJ1YTR1bnJ0Nk9D
 VHFRd2lqRi8zYlRXaXd2VkFBSG5NRlVpb1hzaEhhb2hWRGNWZm5lSU1mVjBiUUNYWWkzTnAK
 WTB2MFp3Y2lGSCtnU0M3cUQ2WE51aHBWR1NMNElpbGlGeS9TemNhSkV6QUhlTERTaFpQMkNX
 ZG5DNHZnbDM3dApocHg4aDU1WWhKbjZIU3VVelBnaGFLdFZCMmsrajdaZXlaK1NGeHA3SXVi
 SEN3TEhsUWhUNzVSd1EzaUF4S242CjBxajUxY1lUbnF4ZFpYVzZmSDNQa3VNellVNUdwcVIv
 MU9sNWMvd2ZJNmc2QW04eUtXLzBFVUx0K0tuNExGc1MKbTdZM201SDV2MTJVNkpCWXZWK3Ix
 M2paaW9zNEVFREU5M0Q1c05IMk1JeVJ6Q0RxMXpkZHQ0WHV5S0ZqUEtXMQo5aWJaRGZGVjdL
 dUNzdnVMMjNzQmMxc0NNb3ArRTFtVC9ReE9JQTZvRFQxTVFzdHdPVnVReURDdi9PdktTZ2Z6
 CjhGWEdMNkFQY2xqQ3FqOEFKaHhReXN4ZG9pUVA4bS92dStialdHR3Z4dzVzMWxncGlSRFRS
 VVBnY0pKTmFHWTIKVklEclpRaTROU2lOUTBOSWkrZGp1NGZOTW1DcFFxZzh0YkMzY0FhNnl3
 bTZvUUIxU0JobURYMmUxMWdSbGx1SQpPblRHUEUwSFRvM2w3MmxoYmc9PQo9cVpNVgotLS0t
 LUVORCBQR1AgUFVCTElDIEtFWSBCTE9DSy0tLS0tCg==
Message-ID: <27143189-0cb4-7bf5-25c1-1f5eff9c2d4d@i2se.com>
Date:   Sat, 19 Feb 2022 16:39:17 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20220213225646.67761-9-pbrobinson@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8BIT
Content-Language: en-US
X-Provags-ID: V03:K1:ILe6Fz+PcydkE9C5P7JR1LqId9H7mDGBirHoFav31q1wYUEAW8e
 V9YvFIQu8thbtO7J1fJX0xONB5ZD2bX1Gcczw1WNRFbnuId/DB1mYHmk8jujMVi8RIkiuZe
 XNFVI7O2+6VjzEqIJuZl7StoPtXfxdUTwWnErbUuAuKy1nTclUtafUHNnulcNOceE/b1du3
 L0193GziaYzGrLz82MQ0Q==
X-UI-Out-Filterresults: notjunk:1;V03:K0:1Im2tNRamfs=:XZ05BBGRNQe/uz0KRAPBEB
 uYISLzZk8KtxKQ6UxgLzEDXZ8CXHmOxFlTXo8vjuTJt0BlrUWcaGF6c/HqdKbDeaDCFLR4b4q
 P9DgsV08NQ9VcsXUv8raiqJwy349i2LEhdKydctwLWrLpdZ8s2A23kAWPQhttbkYyaRHJD+XR
 3jgH3g26rvUsMYuHpE8p53N5yPTiNvSKi9rpeMzGhdFLHYxQCFwX+Kp8jBBOv+Jy5V4vbvi8R
 Yc8XXHgWYLuGmZZathHWI1U0SieclIGUZIwFVc3I+TGGw+kNZ/YmB/kO8LQJ+2YDChNrxOx8J
 pZROOr2foX/qzIu0sovz1dukuwX/TSJ6yNqFYVpWbmC9ugkDMsmkzcxtCRrUUUINQcZXBQaCd
 AqipFS0RaCMk+ZBOKb04e0Rs2Lc/7+ZBqszLTNJkS2QMw/QiPOBOTltTtbl0UbabbtcI7hwQr
 ftn+8jjgA1cgsnB2ocmp/fT/esK/q7VEH5KxJCigqt3gxd8mZSLvqP0RGXxTXfszMeqV8bEO7
 1h/PuRRpr4l9FEUIpxeinvBrvdPjNobULiKg01BrtQdcPDGyp1J/wknwrBjYesXccZs+jOrpx
 HWz5XO449FND4NSCOEzH6jfvKSAZK+WdMtcMEtq42We7nnvUFTSDZKgpz06z5tO0tB3+x1W4v
 MhAvnQMQE0NxyR5yCBq8O35VAoN1TmHPht8IK6NUePbYrf/B00xlHZH+zo627tIiYCYVD/zcg
 FA0sSm0SbWvZFhJZ
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Peter,

Am 13.02.22 um 23:56 schrieb Peter Robinson:
> From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
>
> In BCM2711 the new RPiVid ASB took over V3D. The old ASB is still present
> with the ISP and H264 bits, and V3D is in the same place in the new ASB
> as the old one.
>
> Use the fact that 'pm->rpivid_asb' is populated as a hint that we're on
> BCM2711. On top of that introduce the macro ASB_BASE() which will select
> the correct ASB register base, based on whether we're trying to access
> V3D and which platform we're on.
>
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
> ---
> Changes since v2:
>  - Correct names again
>
> Changes since v1:
>  - Correct names
>
>  drivers/soc/bcm/bcm2835-power.c | 66 ++++++++++++++++++++-------------
>  1 file changed, 41 insertions(+), 25 deletions(-)
>
> diff --git a/drivers/soc/bcm/bcm2835-power.c b/drivers/soc/bcm/bcm2835-power.c
> index 1e0041ec8132..eea31f75dc64 100644
> --- a/drivers/soc/bcm/bcm2835-power.c
> +++ b/drivers/soc/bcm/bcm2835-power.c
> @@ -126,8 +126,9 @@
>  
>  #define ASB_AXI_BRDG_ID			0x20
>  
> -#define ASB_READ(reg) readl(power->asb + (reg))
> -#define ASB_WRITE(reg, val) writel(PM_PASSWORD | (val), power->asb + (reg))
> +#define ASB_BASE(is_v3d) (is_v3d && power->rpivid_asb ? power->rpivid_asb : power->asb)
> +#define ASB_READ(reg, is_v3d) readl(ASB_BASE(is_v3d) + (reg))
> +#define ASB_WRITE(reg, val, is_v3d) writel(PM_PASSWORD | (val), ASB_BASE(is_v3d) + (reg))
just a general note: passing parameter to decide which register should
be used is not the preferred way. It's harder to maintain. A more data
driven approach is better in the long run.
>  
>  struct bcm2835_power_domain {
>  	struct generic_pm_domain base;
> @@ -142,13 +143,16 @@ struct bcm2835_power {
>  	void __iomem		*base;
>  	/* AXI Async bridge registers. */
>  	void __iomem		*asb;
> +	/* RPiVid bridge registers. */
> +	void __iomem		*rpivid_asb;
>  
>  	struct genpd_onecell_data pd_xlate;
>  	struct bcm2835_power_domain domains[BCM2835_POWER_DOMAIN_COUNT];
>  	struct reset_controller_dev reset;
>  };
>  
> -static int bcm2835_asb_enable(struct bcm2835_power *power, u32 reg)
> +static int bcm2835_asb_enable(struct bcm2835_power *power, u32 reg,
> +			      bool is_v3d)
>  {
>  	u64 start;
>  
> @@ -158,8 +162,8 @@ static int bcm2835_asb_enable(struct bcm2835_power *power, u32 reg)
>  	start = ktime_get_ns();
>  
>  	/* Enable the module's async AXI bridges. */
> -	ASB_WRITE(reg, ASB_READ(reg) & ~ASB_REQ_STOP);
> -	while (ASB_READ(reg) & ASB_ACK) {
> +	ASB_WRITE(reg, ASB_READ(reg, is_v3d) & ~ASB_REQ_STOP, is_v3d);
> +	while (ASB_READ(reg, is_v3d) & ASB_ACK) {
>  		cpu_relax();
>  		if (ktime_get_ns() - start >= 1000)
>  			return -ETIMEDOUT;
> @@ -168,7 +172,8 @@ static int bcm2835_asb_enable(struct bcm2835_power *power, u32 reg)
>  	return 0;
>  }
>  
> -static int bcm2835_asb_disable(struct bcm2835_power *power, u32 reg)
> +static int bcm2835_asb_disable(struct bcm2835_power *power, u32 reg,
> +			       bool is_v3d)
>  {
>  	u64 start;
>  
> @@ -178,8 +183,8 @@ static int bcm2835_asb_disable(struct bcm2835_power *power, u32 reg)
>  	start = ktime_get_ns();
>  
>  	/* Enable the module's async AXI bridges. */
> -	ASB_WRITE(reg, ASB_READ(reg) | ASB_REQ_STOP);
> -	while (!(ASB_READ(reg) & ASB_ACK)) {
> +	ASB_WRITE(reg, ASB_READ(reg, is_v3d) | ASB_REQ_STOP, is_v3d);
> +	while (!(ASB_READ(reg, is_v3d) & ASB_ACK)) {
>  		cpu_relax();
>  		if (ktime_get_ns() - start >= 1000)
>  			return -ETIMEDOUT;
> @@ -274,7 +279,8 @@ static int bcm2835_asb_power_on(struct bcm2835_power_domain *pd,
>  				u32 pm_reg,
>  				u32 asb_m_reg,
>  				u32 asb_s_reg,
> -				u32 reset_flags)
> +				u32 reset_flags,
> +				bool is_v3d)
>  {
>  	struct bcm2835_power *power = pd->power;
>  	int ret;
> @@ -301,13 +307,13 @@ static int bcm2835_asb_power_on(struct bcm2835_power_domain *pd,
>  		goto err_enable_resets;
>  	}
>  
> -	ret = bcm2835_asb_enable(power, asb_m_reg);
> +	ret = bcm2835_asb_enable(power, asb_m_reg, is_v3d);
>  	if (ret) {
>  		dev_err(power->dev, "Failed to enable ASB master for %s\n",
>  			pd->base.name);
>  		goto err_disable_clk;
>  	}
> -	ret = bcm2835_asb_enable(power, asb_s_reg);
> +	ret = bcm2835_asb_enable(power, asb_s_reg, is_v3d);
>  	if (ret) {
>  		dev_err(power->dev, "Failed to enable ASB slave for %s\n",
>  			pd->base.name);
> @@ -317,7 +323,7 @@ static int bcm2835_asb_power_on(struct bcm2835_power_domain *pd,
>  	return 0;
>  
>  err_disable_asb_master:
> -	bcm2835_asb_disable(power, asb_m_reg);
> +	bcm2835_asb_disable(power, asb_m_reg, is_v3d);
>  err_disable_clk:
>  	clk_disable_unprepare(pd->clk);
>  err_enable_resets:
> @@ -329,22 +335,23 @@ static int bcm2835_asb_power_off(struct bcm2835_power_domain *pd,
>  				 u32 pm_reg,
>  				 u32 asb_m_reg,
>  				 u32 asb_s_reg,
> -				 u32 reset_flags)
> +				 u32 reset_flags,
> +				 bool is_v3d)
>  {
>  	struct bcm2835_power *power = pd->power;
>  	int ret;
>  
> -	ret = bcm2835_asb_disable(power, asb_s_reg);
> +	ret = bcm2835_asb_disable(power, asb_s_reg, is_v3d);
>  	if (ret) {
>  		dev_warn(power->dev, "Failed to disable ASB slave for %s\n",
>  			 pd->base.name);
>  		return ret;
>  	}
> -	ret = bcm2835_asb_disable(power, asb_m_reg);
> +	ret = bcm2835_asb_disable(power, asb_m_reg, is_v3d);
>  	if (ret) {
>  		dev_warn(power->dev, "Failed to disable ASB master for %s\n",
>  			 pd->base.name);
> -		bcm2835_asb_enable(power, asb_s_reg);
> +		bcm2835_asb_enable(power, asb_s_reg, is_v3d);
>  		return ret;
>  	}
>  
> @@ -369,7 +376,7 @@ static int bcm2835_power_pd_power_on(struct generic_pm_domain *domain)
>  	case BCM2835_POWER_DOMAIN_GRAFX_V3D:
>  		return bcm2835_asb_power_on(pd, PM_GRAFX,
>  					    ASB_V3D_M_CTRL, ASB_V3D_S_CTRL,
> -					    PM_V3DRSTN);
> +					    PM_V3DRSTN, true);
>  
>  	case BCM2835_POWER_DOMAIN_IMAGE:
>  		return bcm2835_power_power_on(pd, PM_IMAGE);
> @@ -377,17 +384,17 @@ static int bcm2835_power_pd_power_on(struct generic_pm_domain *domain)
>  	case BCM2835_POWER_DOMAIN_IMAGE_PERI:
>  		return bcm2835_asb_power_on(pd, PM_IMAGE,
>  					    0, 0,
> -					    PM_PERIRSTN);
> +					    PM_PERIRSTN, false);
>  
>  	case BCM2835_POWER_DOMAIN_IMAGE_ISP:
>  		return bcm2835_asb_power_on(pd, PM_IMAGE,
>  					    ASB_ISP_M_CTRL, ASB_ISP_S_CTRL,
> -					    PM_ISPRSTN);
> +					    PM_ISPRSTN, false);
>  
>  	case BCM2835_POWER_DOMAIN_IMAGE_H264:
>  		return bcm2835_asb_power_on(pd, PM_IMAGE,
>  					    ASB_H264_M_CTRL, ASB_H264_S_CTRL,
> -					    PM_H264RSTN);
> +					    PM_H264RSTN, false);
>  
>  	case BCM2835_POWER_DOMAIN_USB:
>  		PM_WRITE(PM_USB, PM_USB_CTRLEN);
> @@ -435,7 +442,7 @@ static int bcm2835_power_pd_power_off(struct generic_pm_domain *domain)
>  	case BCM2835_POWER_DOMAIN_GRAFX_V3D:
>  		return bcm2835_asb_power_off(pd, PM_GRAFX,
>  					     ASB_V3D_M_CTRL, ASB_V3D_S_CTRL,
> -					     PM_V3DRSTN);
> +					     PM_V3DRSTN, true);
>  
>  	case BCM2835_POWER_DOMAIN_IMAGE:
>  		return bcm2835_power_power_off(pd, PM_IMAGE);
> @@ -443,17 +450,17 @@ static int bcm2835_power_pd_power_off(struct generic_pm_domain *domain)
>  	case BCM2835_POWER_DOMAIN_IMAGE_PERI:
>  		return bcm2835_asb_power_off(pd, PM_IMAGE,
>  					     0, 0,
> -					     PM_PERIRSTN);
> +					     PM_PERIRSTN, false);
>  
>  	case BCM2835_POWER_DOMAIN_IMAGE_ISP:
>  		return bcm2835_asb_power_off(pd, PM_IMAGE,
>  					     ASB_ISP_M_CTRL, ASB_ISP_S_CTRL,
> -					     PM_ISPRSTN);
> +					     PM_ISPRSTN, false);
>  
>  	case BCM2835_POWER_DOMAIN_IMAGE_H264:
>  		return bcm2835_asb_power_off(pd, PM_IMAGE,
>  					     ASB_H264_M_CTRL, ASB_H264_S_CTRL,
> -					     PM_H264RSTN);
> +					     PM_H264RSTN, false);
>  
>  	case BCM2835_POWER_DOMAIN_USB:
>  		PM_WRITE(PM_USB, 0);
> @@ -626,13 +633,22 @@ static int bcm2835_power_probe(struct platform_device *pdev)
>  	power->dev = dev;
>  	power->base = pm->base;
>  	power->asb = pm->asb;
> +	power->rpivid_asb = pm->rpivid_asb;
>  
> -	id = ASB_READ(ASB_AXI_BRDG_ID);
> +	id = ASB_READ(ASB_AXI_BRDG_ID, false);
>  	if (id != 0x62726467 /* "BRDG" */) {
>  		dev_err(dev, "ASB register ID returned 0x%08x\n", id);
>  		return -ENODEV;
>  	}
>  
> +	if (pm->rpivid_asb) {
> +		id = ASB_READ(ASB_AXI_BRDG_ID, true);
> +		if (id != 0x62726467 /* "BRDG" */) {

It would be nice to use a define for this id, since we use it twice.

Best regards

> +			dev_err(dev, "RPiVid ASB register ID returned 0x%08x\n", id);
> +			return -ENODEV;
> +		}
> +	}
> +
>  	power->pd_xlate.domains = devm_kcalloc(dev,
>  					       ARRAY_SIZE(power_domain_names),
>  					       sizeof(*power->pd_xlate.domains),

