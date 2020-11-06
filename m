Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 34F5A2A965E
	for <lists+devicetree@lfdr.de>; Fri,  6 Nov 2020 13:46:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727014AbgKFMqO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 6 Nov 2020 07:46:14 -0500
Received: from sonic306-1.consmr.mail.bf2.yahoo.com ([74.6.132.40]:41230 "EHLO
        sonic306-1.consmr.mail.bf2.yahoo.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726757AbgKFMqN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 6 Nov 2020 07:46:13 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aol.fr; s=a2048; t=1604666771; bh=zS4B1yRTnNuvY3t+UCspgZgSTCynme8L74fJQbF/Eug=; h=Date:From:Reply-To:Subject:References:From:Subject; b=SNvH86qSlFLubXi1OZWd7sBu4D5trRWR6+UqvvYyHtw0jS4LRFCGtn17DJ7VEXBW/eU9fBkfrXni0svWwopwq5vGoiuucSmhB+mJkxijj88LM+5pUjks8+qvsIWsr/DguLdAqlA6aykxgsGx8XFEBPCthvYu8d8uKafMcyENZUIR5dQ6BhjTHTGsNTpym/CzCQcYkVFRegarULrg/6VyptORTuW4tqLDV2VH9jNhG7XyRxm7iChON0ciqI7ZjpNo38iGUZMuhhnWOaKS61xCeNrEzLvlqhEmQvxCZiKL8b5YxH06+/Svnfcx513AK/anDGjVjHV7Sa2frxi5N/dQZA==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1604666771; bh=NYmvqxlOKf0aG+h3PSVm5LfBUAx5QIYYi7hj8zSgJpi=; h=Date:From:Subject; b=c+VjO39iN7kPFpR6vTltc7XfILxH51V0KGVBgAiqS7xC2jKwJo3zCaUNROws+XsXrfvd6geAQ0ejh64MMzI7pPLu9beTf8nwfmkhKsEG88hZYJPG5RvwP+I5TFsPx3Zd+lREScY741TgSFjkAYbzOSveeEnDE46x7m1nAMTylTncB7PVQidjd7aB5lzHhRHouMAIu5A1UYc6kRFB16pRAMOHXTtadvfSqsYlgMceePLgBJS6ZDdbotDPH4Z11fsyL57kSL8Qfc0mYQMg+5Mvx2ah/QKpcN8SC+IAcvP5qxXRUqIO6Ujj2W9ttilrAVbSmNPYPdZbOGcl5k2x1GjY2g==
X-YMail-OSG: Du.MCdoVM1k.rV9Z8N7BkIsvHPJY3KfEcfZmZHkbateMmZB0s7nZupZ8je9so6Z
 SXAcxMQrdYt0.ZKKMiw5QnJZvG.DESAE1X1j2vJ9vtGADoRKqKsXYkdhhQIiPusRfWJn_p87r07m
 etmdYP3g_Ny2MF6FuircXHuyT05tFy5arFYkjzSuZ2dSEyq_PASrzC9bfV4HmVEwKnXQlfbvPP_Q
 E69CKUStanKCw2wXvLuCLWtouRXN1SKgxvE.aPAx3x1eKfUaxOIvfmSN2rDiovvELLDtY_HPvVfh
 rHroB4Vx6YyTYuHo_IctxvUXPEGahAiqEQzCqjRiH1ORSoIfKMvjf_f9iNioc.bLEK89XdNYcDkQ
 0hgB.fGlkZnEQMU7HzZzoBT._Avhq._sFahsXTO9.9IOxmUmQ4w1bUnaa41wzE6jgaRJnJv3WwCt
 pV0M2Yy9mfg1VBUAuHxde6G6AHeXYd0qKsj_fojfsdeyDpOVYsYzUb8yY6pBR_ukqPem_zqia062
 pkGdudCq3CnjlJcoFr_41y2pM2RzzIFwVaT8XfbAybbWXn0eZWy5zRWoJ0lpyamtiRwMLjkGpr9C
 L5zBmk8FmlJhkkZp5PioqHsDvIImyFJb1SwatY42gtT9oAIaS9VDTG4mEirCtXJf3pfWRqO.WJuO
 WnZ.75_mwK_z5sAkgnGDSFaCniV0dP_.L52tiOV5Um7bU_VhFtV536jEOANvYXeZdnZWkefPZ4uw
 c7cJdNC7vjiE521CM15AMMUsIy5AOrRbCZsTu9HLZfs6n6_3Rx51iwr8wRgLgSjP71jDXpImHIg1
 vaLjAMqOjXufCdAZS_PFt_JXuHojtpCryjNBw2zbXDtrLHH.Mu9zP7MHWol_rnns8HfEaJiwoXLf
 hqcjoPSSXkQ3bt2A56ssfI6Awu5e0gx_ekl418CD0PXOsxjaHQQiZXqGZ3Y8Vo1A1XGeueAAI9s_
 oMYZl_T.ResNgWqlm4w3QeBRy7nuXvXIhSyhKSnHWIqPD_PfJTOltttF4TEsRGKRGaIdCO19MXdg
 lSEKYBlDCDWn1kCch1RNlL9NxrVkGyd.ACdJTdeGkQvak4ZcI3J5JO1thYJXtcWnF.W4tTB099ad
 JborzCvkkTPa9hgh70ESEwDV6KE6siQLFr_6pacBymaStwfZQ607ZyOBiy2M3hexN0KvcERhHdMN
 FLciFU.3qAhb3Wal9oQNqooMjMPquAI949dzeRdiF7OonnDwtmB1mo0OUYbSgP.os30Vovnmprrw
 8weQ973MTCHYPdBV7mZcWRYKW16JV5c_SJTcGCdzrAjmuhwOpkp8mcKzhQaC6ZwpgmQK4GjoF6p1
 nahgdh4qxnNzte93o08GyL4lGS1LCo9RwqWAbmLXbDFRJKaplalervMqEcvt2gobc3vmpenLT7Bh
 3aRbaituYdW.T6m6Pq.yiRIAQgs9MbuIaVKnJS9FFN17ks1WfAf63iYQW7UacPXQdJncuc3oQgBC
 kLk324_YxDNWanNG5v5YQDjRzwm9P_2gNJD0eykrS2sARabFFKK4v5LXHOrMMKfJ5TXZlfsSQuCy
 RsHg3CAn88kSyLktLM1YO2r4m3UqRUTPR6Jjzoyl1cy_8jyM1KkJruGWZyvqOF3KaZuHcopPNm5q
 N5WnGGnRlWcXn6Zg947ZB91qCLivx9LwgA7mN.ewhsIlEgvl6FLWpnY56tbDCRawFUTv9eZr1ZZD
 QBk8O3VHH9dlmIurCbR2irO1FOnPWDTlbBnWlfuVj_wE1YKd1vb8sL.zj_NA0jAToXArLX1Theu_
 3vYSCPAyMTPk28xyxT5nqB3H_tdMjhqGuSSRoSuhEpisy5LNwe9yYMEXM.XDnb9VmsyOuXkYXlFF
 BP1GCU8g8xqvC2KyDbK8GHIWAP1Et4bxW0acR7vBZdz1LH54e3VsjwJ9V9.agZnz9G_F97GirWW7
 xU8eQRE2vR9pqq8w1W5CbfhTqbIbB0nFzLwRAVsD72TMlxcu_p87GnER4isi275rXHe1e6jC43Yw
 ve6Mx6dRR3hNK4PVuV1Djkzf9B_N7.Y3snftSN8zEsxAmL6KcQ7kAxI7LWW0hsp_JmiP76J7BheC
 yw5bnH0EVtKfnYOuITSDibDndIs1nTPXUrYhuqtMKYh6HRks9_4m4NyE2FuuGuKDpzRIVW02EJ7V
 1Uey3xCZSImD3luFiQNn3EAUJS.QmG9aEA3MgXuIymFRHF_7QTq2PGkDhgH6omNUzHqfcaw_SVLt
 XPIkJ_nKsLomSS83zieUIkIZLewA7fQkEFAAl8D7U6_0gJ8pYoRXXJg4DT1fza6lB_ZFPif24Kv2
 ruAbC3lfdz473gcROQ0WdkcLZxzgs7arLy4FL5uqpUWVHrAzddPrRrP4CxWCJj.KMHGquObKs6cR
 5SEPDqZVv_kFww304aSyK3q82Y4kabfV18GZygc2Q0gCDIc3k9GkbR3KEdzle4DD2kRgF7YBA_5w
 fj_SuDJTLezb8kjMIpsfBjn9fxLdHScBbiRQYumnuuhtKz_g_jwMQxHvX9L5kXTK.8i9BzoUDkCt
 ppOn9VTXAA8TB1QY0aSHDMgH2U2cMRKl45Ncm5FVtYIQXObQtTvNT4JejKkUdHBslM3JKB_54Y4D
 2bCJD4SeTF_HJS1yjXFHCAuS4LV2lLVraszHwa9ClJDsXDcgfxmDWMLC8_GKK5esn.bds81ETZLg
 aoI5pgeI1OQ0dtLsn94pPoniafm_Z1tUYgIbNhn3tKW2_9fu8JKTWO9OSwDNYgQKTGHj.D3qCfMs
 3WLqsrI7vdTi3oMBSgLbI57GSXiRIK6fU1ohH3FCAz6mALnZ5E_ZCoADVSp5kq7roErYu7_h7SCs
 xyRh6DE.BHC_lIN.TFYRrLX4bXXJYzIzGeBxtuzf54IkCZJy3o.kq8RkOa.jJg5pWz3q6lsI8yMu
 N.61tEL60GwCtILgLGamOJWSYHTOL0UWBWI7ec.p1ctipvZ2OOBuoROFS_N1VSQN0FjULm_um8sr
 cnnsOdnSKyRy1zQpSpEDdUeddLkEzC74AOhI86fwmrP6Kf95RNWY7oE9LiWaDe657OYG8GAeP1mx
 W2zh_7yqur2L7g.E49HX.CxtspItyxv4sHVRTsJhh43c9qbE89Eoap4YmWTwCYcTInclHH8YNXis
 aWmvQqobriOEwCCdARugfuICjS6FlugTxu83JDpcKWY_C6PTzdIxh5CwzZpF2jZkz5AANDUTLLis
 vWMrHRjRYRKuopNbvOzdZej0kweY8M9EA0p7SrmkcOM3X5o8F7xsLdbN47C9oDaVCv0sH.PPacFe
 PihXUhblXruUPf7iLIbw1.qCTIeGpol_SXKJXfABiCELPnolgOC9MGMn1XwaPeRz4F77BMmcwO84
 3sq4PU6FS1GczQeLRUSEmuo31dpv8UhdYNMhwjViZi9ZoF.jpk4HMhRxQ17pQmNj16XPqYymgpzH
 ZL1U1qcqC9hHSGdVFvhibTfs7nUrk5BbuooXuNrJAe_dQ24ByT7lZqoGG6lWf9wDNSEpYVCg7SGY
 uK4pKZpbwbpiYDKpzcLQeOQqRMgPK0pXkcGzCvf6utSLU7bHHPTdExlheob9oLsxEJRm8g2DQ8U.
 FpGO1XVlNwYkZi36S9jQZ13uFUrE2hgYQWUpLUnCuytW6DfHZH6a8WtBVyG0tN5nj2oRRvjYaKkT
 kWsyC5eiMxmpJMNpe0o4noaKS5OFn9gOITfszZf8hReAaMgxzxPYZww6j3Z2zMHKnpk1dMxs5rct
 ZJ2CGeB.7eGJZrTp2m9fh5fiojVVPLkO3CP3OPbb3mt.dJBmD6BCsp0bSJXVH7x02QUdcnodA8pQ
 kpJM1AbFtfjsVrwZc8HmpMCaKqrLj5Cp432fhUc2i31keZQuv6sUBFIAj3.5HjPUscax_VQ3VGw5
 J6RS4kEhRZiTeqhWnRtkUIICFnusA2tyYVnv5zKEf4Ha2op2fvcEeS26wwMtBtow228gdxIPcQN8
 jVcckb8uQdg_BwzCsrklk_xzALntzSo7KqzH6Ibf4O_xx3damo9EVbvmeBmimFzaxTPjW.H2ubHa
 BzTroFwUc2RV5hqI13h72D9qougBaraW2UwpAjnkyViqMG4le9w0izVMfxrYgbIEx1oivktncCRy
 WjWDMb91tFX90XCyy6EVqNSgpJF2Erz3lJVbA5EGjiOY3W3_u7YUUwjIul.PES2kYPTmik7WEfsY
 e7dy87.Z34an.xyG3Oxk9xO3spAgCUqJMtr.yis0Bg80hZhj82iuavebipBzgIJ1NHsiwJ6f7lhA
 mCJYJrg..HpM9imMHpiJzuZxAGVCUmaAMdoXjlHEneoZd_yCUHKfV86LGSimCpLd4j21qBRAEXTq
 cj936I.FWtE_NXDmzrzjHvmPeRKAZMzkkCTcqNwZmYXhg_55yrXYcWn4M8EeWlHfA6NGBJr4VBDl
 7xHBqp0jF5joROt9shuCEuonBwbVqtP2iDj6D5oCLJhIDaUprL1xRZ_zbpv.COTQ1Nl6hYSNfJMx
 dzR7hTbe3l5GfMLIOFwXhmTsrDEoy3g6.gP.Zm4fKJHmec_MRkQVk9qtbN9w3umo5Chgy4GIA.x8
 eYE6x4MFGihl4gPVnJbI.ag1T99WWIH4gRQWuhH9iwVHLypelEKr2EnSlEbFO6Uj1p_cncbisyA_
 4NTJDyGHULLZUmWaW3bInZBdklyqLsZVBy9CN_Ivk3_oGTPZA.UxM6elCWtc8FkmNJ3rzblqcsa4
 WTUFWrR.7_6jYbKlJxaFIoyQ1MjOGm2yzQODW0CT5sXEjiZkIyS2U3sa6LeGAFCdxr.xi7R7Vkwk
 qY4oElcultTX5lwzl5qKOScrzDczbTuix9VTVJ8mY41FOthn8AqwIORsYt08wxjqfwtoQ0TjEo1r
 6q5wTdBDXfxXAPqZgb6yeunjNrWLJ2Urk7U1h8sl3ddSxCPD7DNzzQ2mc4dRCOjfWWVDU2GxdXlg
 tzfCStO2VyjGSuM_BDzVUs7hYJ0PHIp1YzXEWmg3O9SX081JM2MDvoE2cqQChESVN7WD0bXmC83S
 xeKQny8xH5IGTxIojYN21kjGdHIyydAGjeluUa4C.NCpCO9NZU55gMsfZpBVEsrX6shLGY_hu4Oz
 WFRV1t4tmAvGt.zwuMtTKgNCDFiI7sYuaeQ6UtGSv9JrWLnVKC0uKtWaeQsa7OtImqsOWve94zUA
 NbofU7xhBkvNuKZVZrj2e0cbjRcu67T41x1TMFG_3l.VkMbJko3j.iRm2AFV5hF3uAUHYKioVn2s
 thgwdPGGIIPPzekB9LQSKxaqEboMp2a422z38VsyPlDKpzAMiwt8MGzcHCeZ72HDYojjfU34Pq2Y
 69XtDNZQerQBpxB4M5zhPTdEOgGdALLToGwVGodnoOdgj1OuM85qtf9.TB.i3SbddudHxHeGDtAW
 jsD_kNx.yYjNdwIrN7632r0cueRe531t37p5EhYfEcrV61lr55eetcDf_wNn7b262_0Jgn6gh1pL
 5XC41UB65JEjLyzsAoQfTdjvF1NurDTo9xA--
Received: from sonic.gate.mail.ne1.yahoo.com by sonic306.consmr.mail.bf2.yahoo.com with HTTP; Fri, 6 Nov 2020 12:46:11 +0000
Date:   Fri, 6 Nov 2020 12:46:08 +0000 (UTC)
From:   MRS SABAH IBRAHIM <mrssabahibrahim6@aol.fr>
Reply-To: absa50602@gmail.com
Message-ID: <496283661.1676215.1604666768973@mail.yahoo.com>
Subject: Compensation for your effort
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
References: <496283661.1676215.1604666768973.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.16944 YMailNodin Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36
To:     unlisted-recipients:; (no To-header on input)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Dear Friend,

How are you I hope you are very fine with your entire family? If so glory be to  Almighty God.
I'm happy to inform you about my success in getting those funds transferred under the cooperation of a new partner from  GREECE, Presently i'm in GREECE for a better treatment  and building of the orphanage home projects with the total  money.

Meanwhile, I didn't forget your past efforts and attempts to assist me in transferring those funds and use it for the building of the orphanage home and helping the less privilege.

Please contact my nurse in Burkina Faso, her  name is Mrs. Manal Yusuf , ask her to send you the compensation of $600,000.00USD which i have credited with  the ECOBANK bank into an ATM card before i traveled for my treatment, you will indicate your contact as my else's business associate that tried to help me, but it could not work out for us, and I appreciated your good efforts at that time very much. so feel free and get in touched with the nurse Mrs. Manal Yusuf (email: mrs1manalyusuf@gmail.com  ) and instruct her the address where to send the ATM card to you.

Please i am in the hospital here, i would not have much time to check emails or  respond to you, but in case you have any important message do send me as an update, i might instruct the doctor to check it and respond to you, meanwhile, once you received the ATM CARD,  do not delay to inform me.

Finally, remember that I had forwarded an instruction to the nurse on your behalf to deliver the ATM  card to you, so feel free to get in touch with her by email  she will send the ATM card to you without any delay.

Thank you and God bless you.
MRS SABAH IBRAHIM
